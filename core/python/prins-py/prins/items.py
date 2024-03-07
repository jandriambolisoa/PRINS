import os
import yaml
import json

from .explorer import PathFinder
from .superItems import ItemBase
from .subItems import Category, Status, Task

#
# Every item has its own variables.
# Different items are :
#   - Asset
#   - Show
#   - Episode
#   - Sequence
#   - Shot
#


class Asset(ItemBase):
    
    def __init__(self,
                 assetId = None,
                 category = [Category.kNone],
                 status = Status.kNone,
                 showId = [],
                 description = None,
                 userDatas = {}):
        
        super().__init__()

        self.assetId = assetId
        self.category = category
        self.status = status
        self.showId = showId
        self.description = description
        self.userDatas = userDatas

        
    @staticmethod
    def get(assetId):
        """Get an existing asset as a Prins item.

        :param assetId: The asset name
        :type assetId: str
        :raises Exception: Raises an error if the requested asset does not exist
        :return: The asset as an Asset class instance
        :rtype: object
        """

        finder = PathFinder()
        finder.generate_projectRoot()
        finder.update_assetId(assetId)
        finder.update_template(Asset.__name__, "id")
        idFilepath = finder.generate_result().result

        if os.path.isfile(idFilepath):
            with open(idFilepath, "r") as f:
                datas = json.load(f)
        else:
            raise Exception("The asset %s does not exist"%assetId)

        newAsset = Asset(**datas)
        newAsset.assetId = assetId

        return newAsset


    def modify(self,
               value,
               changeCategories = False,
               addCategories = False,
               changeStatus = False,
               changeShowId = False,
               addShowId = False,
               changeDescription = False,
               changeUserDatas = False,
               addUserDatas = False):
        
        """Modify infos about the asset. Update the id.json file.
        This method should be called multiple time if multiple infos
        are needed to change.

        :param value: The value that will change the info.
        :type value: depends on other arguments
        :param changeCategories: Replace categories. Except a list(int,) as a value, defaults to False
        :type changeCategories: bool, optional
        :param addCategories: Append categories. Except a list(int,) as a value, defaults to False
        :type addCategories: bool, optional
        :param changeStatus: Replace the status. Except an integer as a value, defaults to False
        :type changeStatus: bool, optional
        :param changeShowId: Replace the shows. Except a list(str,) as a value, defaults to False
        :type changeShowId: bool, optional
        :param addShowId: Append show. Except a list(str,) as a value, defaults to False
        :type addShowId: bool, optional
        :param changeDescription: Replace the description. Except a string as a value, defaults to False
        :type changeDescription: bool, optional
        :param changeUserDatas: Replace user datas. Except a dict as a value, defaults to False
        :type changeUserDatas: bool, optional
        :param addUserDatas: Append user datas. Except a dict as a value, defaults to False
        :type addUserDatas: bool, optional
        :return: The resulting asset as a Prins item.
        :rtype: object
        """

        oldDatas = {
            "assetId":      self.assetId,
            "category":     self.category,
            "status":       self.status,
            "showId":       self.showId,
            "description":  self.description,
            "userDatas":    self.userDatas
            }

        validArgument = True

        if changeCategories:
            if isinstance(value, list):
                for v in value:
                    if not value in list(Category().listValues()):
                        validArgument = False
                    else:
                        self.category = value
            else:
                validArgument = False

        if addCategories:
            if isinstance(value, list):
                for cat in value:
                    if cat in list(Category().listValues()):
                        self.category.append(cat)
                    else:
                        validArgument = False
            else:
                validArgument = False

        if changeStatus:
            if isinstance(value, int):
                if value in list(Status().listValues()) and value > 10 and value < 20:
                    self.status = value
            else:
                validArgument = False

        if changeShowId:
            if isinstance(value, list):
                self.showId = value
            else:
                validArgument = False

        if addShowId:
            if isinstance(value, list):
                for show in value:
                    if show in Show.search(show, True):
                        self.showId.append(show)
                    else:
                        validArgument = False
            else:
                validArgument = False

        if changeDescription:
            if isinstance(value, str):
                self.description = value
            else:
                validArgument = False
        
        if changeUserDatas:
            if isinstance(value, dict):
                self.userDatas = value
            else:
                validArgument = False

        if addUserDatas:
            if isinstance(value, dict):
                for key in list(value.keys()):
                    self.userDatas[key] = value[key]
            else:
                validArgument = False

        # Check if the value argument is correct
        if not validArgument:
            # If not, revert to old datas
            Exception("The value argument is incorrect.")
            oldAsset = Asset(**oldDatas)
            return oldAsset
        
        # Edit the id.json file
        finder = PathFinder()
        finder.generate_projectRoot()
        finder.update_assetId(self.assetId)
        finder.update_template(self.__class__.__name__, "id")
        idFilepath = finder.generate_result().result

        newDatas = {
            "category":     self.category,
            "status":       self.status,
            "showId":       self.showId,
            "description":  self.description,
            "userDatas":    self.userDatas
            }

        if os.path.isfile(idFilepath):
            with open(idFilepath, "w") as f:
                json.dump(newDatas, f)

        return self

        
    @classmethod
    def create(cls,
               assetId,
               category = [Category.kProp],
               status = Status.kAssetStandBy,
               showId = [],
               description = None,
               userDatas = None):
        
        """Create an asset. Create its folders and the id.json file.
        Returns the asset as an item Prins class.

        :param assetId: The name of the asset
        :type assetId: str
        :param category: The categories of the asset, defaults to [Category.kProp]
        :type category: list(int,) or int, optional
        :param status: The status of the asset, defaults to Status.kAssetStandBy
        :type status: int, optional
        :param showId: The shows of the asset, defaults to []
        :type showId: list(str,), optional
        :param description: The description of the asset, defaults to None
        :type description: str, optional
        :param userDatas: Arbitrary datas defined by the user, defaults to None
        :type userDatas: dict, optional
        :raises Exception: Raises an error if the asset already exists
        :raises TypeError: Raises an error if the assetId arg is not a string
        :raises Exception: Raises an error if the category is not an integer
        :raises Exception: Raises an error if the status is not an integer
        :raises Exception: Raises an error if one of the showId does not exists
        :raises TypeError: Raises an error if the description arg is not a string
        :raises TypeError: Raises an error if the userDatas arg is not a dict
        :raises Exception: Raises an error if the folder already exists
        :return: The asset as a Prins item
        :rtype: object
        """
        
        #TODO Re-arrange, better to do a first block of arguments check
        # with all the 'isinstance' conditions and error raising.
        # Only after, do a second block of newAsset manipulation.

        newAsset = Asset()

        # Get user defined assetId
        if assetId and isinstance(assetId, str):
            if not Asset.search(assetId, perfectMatch = True):
                newAsset.assetId = assetId
            else:
                raise Exception("You are trying to create an already existing asset : %s"%assetId)
        else:
            raise TypeError("Asset.assetId must be a string")

        # Get user defined category
        if isinstance(category, list):
            for c in category:
                if c in Category().listValues():
                    newAsset.category.append(c)
                else:
                    raise Exception("Asset.category must be attributes of Category")
        else:
            if category in Category().listValues():
                newAsset.category.append(category)
            else:
                raise Exception("Asset.category must be attributes of Category")
            
        # Remove duplicates
        newAsset.category = list(dict.fromkeys(newAsset.category))
        
        # Get user defined status
        if status in Status().listValues():
            newAsset.status = status
        else:
            raise Exception("Asset.status must be an attribute of Status")

        # Get user defined showId
        if isinstance(showId, list):
            for show in showId:
                if(Show.search(showId, identical = True)):
                    newAsset.showId.append(show)
                else:
                    raise Exception("Asset.showId must contains already existing Shows.")
        else:
            if(Show.search(showId, identical = True)):
                newAsset.showId.append(showId)
            else:
                raise Exception("Asset.showId must contains already existing Shows.")
        
        # Get user defined description
        if not description:
            newAsset.description = "No description."
        elif description and isinstance(description, str):
            newAsset.description = description
        else:
            raise TypeError("Asset.description must be a string")
        
        # Get user defined userDatas
        if not userDatas:
            newAsset.userDatas = {}
        elif userDatas and isinstance(userDatas, dict):
            newAsset.userDatas = userDatas
        else:
            raise TypeError("Asset.userDatas must be a dictionnary")
        
        # Generate paths
        finder = PathFinder()
        finder.generate_projectRoot()
        finder.update_assetId(assetId)
        finder.update_template(cls.__name__, "root")
        assetRoot = finder.generate_result().result

        # Generate folders
        if not os.path.isdir(assetRoot):
            os.makedirs(assetRoot)

            finder.update_template(cls.__name__, "publishs")

            for task in Task().listValues():
                # Generate only asset tasks folders
                if task > 0 and task < 50:
                    finder.update_task(input = task)
                    taskPath = finder.generate_result().result
                    os.makedirs(taskPath)

        else:
            raise Exception("The asset folder already exist")

        # Generate id.json
        finder.update_template(cls.__name__, "id")
        idFilepath = finder.generate_result().result
        assetDatas = {
            "category": newAsset.category,
            "status":   newAsset.status,
            "showId":   newAsset.showId,
            "description":  newAsset.description,
            "userDatas":    newAsset.userDatas
            }

        with open(idFilepath, "w") as idFile:
            json.dump(assetDatas, idFile)

        return newAsset
        
        
    @classmethod
    def search(cls, characters, perfectMatch = False):
        """Search for existing assets id corresponding to the given input.

        :param characters: The text input to use to search
        :type characters: str
        :param identical: if True, will return only perfect matchs, defaults to False
        :type identical: bool, optional
        :raises Exception: Raises an error if arguments are of the wrong type
        :return: A list of found assets
        :rtype: list(str)
        """

        if not characters or not isinstance(characters, str):
            raise Exception("The characters arg must be a string.")

        finder = PathFinder()
        finder.generate_projectRoot()
        finder.update_template(cls.__name__ ,"parent")
        parentFolder = finder.generate_result().result

        searchResults = cls.findItems(parentFolder, characters, perfectMatch)

        return searchResults


class Show(ItemBase):
    
    def __init__(self,
                 showId = None,
                 category = [Category.kNone],
                 status = Status.kNone,
                 description = None,
                 userDatas = {}):
        
        super().__init__()

        self.showId = showId
        self.category = category
        self.status = status
        self.description = description
        self.userDatas = userDatas


    @staticmethod
    def get(showId):
        """Get an existing show as a Prins item.

        :param assetId: The show name
        :type assetId: str
        :raises Exception: Raises an error if the requested show does not exist
        :return: The asset as a Show class instance
        :rtype: object
        """

        finder = PathFinder()
        finder.generate_projectRoot()
        finder.update_showId(showId)
        finder.update_template(Show.__name__, "id")
        idFilepath = finder.generate_result().result

        if os.path.isfile(idFilepath):
            with open(idFilepath, "r") as f:
                datas = json.load(f)
        else:
            raise Exception("The show %s does not exist"%showId)

        show = Asset(**datas)
        show.showId = showId

        return show


    def modify(self,
               value,
               changeCategories = False,
               addCategories = False,
               changeStatus = False,
               changeDescription = False,
               changeUserDatas = False,
               addUserDatas = False):
        
        """Modify infos about the show. Update the id.json file.
        This method should be called multiple time if multiple infos
        are needed to change.

        :param value: The value that will change the info.
        :type value: depends on other arguments
        :param changeCategories: Replace categories. Except a list(int,) as a value, defaults to False
        :type changeCategories: bool, optional
        :param addCategories: Append categories. Except a list(int,) as a value, defaults to False
        :type addCategories: bool, optional
        :param changeStatus: Replace the status. Except an integer as a value, defaults to False
        :type changeStatus: bool, optional
        :param changeDescription: Replace the description. Except a string as a value, defaults to False
        :type changeDescription: bool, optional
        :param changeUserDatas: Replace user datas. Except a dict as a value, defaults to False
        :type changeUserDatas: bool, optional
        :param addUserDatas: Append user datas. Except a dict as a value, defaults to False
        :type addUserDatas: bool, optional
        :return: The resulting show as a Prins item.
        :rtype: object
        """

        oldDatas = {
            "showId":       self.showId,
            "category":     self.category,
            "status":       self.status,
            "description":  self.description,
            "userDatas":    self.userDatas
            }

        validArgument = True

        if changeCategories:
            if isinstance(value, list):
                for v in value:
                    if not value in list(Category().listValues()):
                        validArgument = False
                    else:
                        self.category = value
            else:
                validArgument = False

        if addCategories:
            if isinstance(value, list):
                for cat in value:
                    if cat in list(Category().listValues()):
                        self.category.append(cat)
                    else:
                        validArgument = False
            else:
                validArgument = False

        if changeStatus:
            if isinstance(value, int):
                if value in list(Status().listValues()) and value > 30 and value < 40:
                    self.status = value
            else:
                validArgument = False

        if changeDescription:
            if isinstance(value, str):
                self.description = value
            else:
                validArgument = False
        
        if changeUserDatas:
            if isinstance(value, dict):
                self.userDatas = value
            else:
                validArgument = False

        if addUserDatas:
            if isinstance(value, dict):
                for key in list(value.keys()):
                    self.userDatas[key] = value[key]
            else:
                validArgument = False

        # Check if the value argument is correct
        if not validArgument:
            # If not, revert to old datas
            Exception("The value argument is incorrect.")
            oldShow = Show(**oldDatas)
            return oldShow
        
        # Edit the id.json file
        finder = PathFinder()
        finder.generate_projectRoot()
        finder.update_showId(self.showId)
        finder.update_template(self.__class__.__name__, "id")
        idFilepath = finder.generate_result().result

        newDatas = {
            "category":     self.category,
            "status":       self.status,
            "showId":       self.showId,
            "description":  self.description,
            "userDatas":    self.userDatas
            }

        if os.path.isfile(idFilepath):
            with open(idFilepath, "w") as f:
                json.dump(newDatas, f)

        return self

        
    @classmethod
    def create(cls,
               showId,
               category = [Category.kShort],
               status = Status.kShowStandBy,
               description = None,
               userDatas = None):
        
        """Create aa new show. Create its folders and the id.json file.
        Returns the show as an item Prins class.

        :param showId: The name of the show
        :type showId: str
        :param category: The categories of the asset, defaults to [Category.kShort]
        :type category: list(int,) or int, optional
        :param status: The status of the asset, defaults to Status.kShowStandBy
        :type status: int, optional
        :param description: The description of the asset, defaults to None
        :type description: str, optional
        :param userDatas: Arbitrary datas defined by the user, defaults to None
        :type userDatas: dict, optional
        :raises Exception: Raises an error if the show already exists
        :raises TypeError: Raises an error if the showId arg is not a string
        :raises Exception: Raises an error if the category is not an integer
        :raises Exception: Raises an error if the status is not an integer
        :raises TypeError: Raises an error if the description arg is not a string
        :raises TypeError: Raises an error if the userDatas arg is not a dict
        :raises Exception: Raises an error if the folder already exists
        :return: The show as a Prins item
        :rtype: object
        """
        
        #TODO Re-arrange, better to do a first block of arguments check
        # with all the 'isinstance' conditions and error raising.
        # Only after, do a second block of newAsset manipulation.

        newShow = Show()

        # Get user defined showId
        if showId and isinstance(showId, str):
            if not Show.search(showId, perfectMatch = True):
                newShow.showId = showId
            else:
                raise Exception("You are trying to create an already existing show : %s"%showId)
        else:
            raise TypeError("Show.showId must be a string")

        # Get user defined category
        if isinstance(category, list):
            for c in category:
                if c in Category().listValues():
                    newShow.category.append(c)
                else:
                    raise Exception("Show.category must be attributes of Category")
        else:
            if category in Category().listValues():
                newShow.category.append(category)
            else:
                raise Exception("Show.category must be attributes of Category")
            
        # Remove duplicates
        newShow.category = list(dict.fromkeys(newShow.category))
        
        # Get user defined status
        if status in Status().listValues():
            newShow.status = status
        else:
            raise Exception("Show.status must be an attribute of Status")

        # Get user defined description
        if not description:
            newShow.description = "No description."
        elif description and isinstance(description, str):
            newShow.description = description
        else:
            raise TypeError("Show.description must be a string")
        
        # Get user defined userDatas
        if not userDatas:
            newShow.userDatas = {}
        elif userDatas and isinstance(userDatas, dict):
            newShow.userDatas = userDatas
        else:
            raise TypeError("Show.userDatas must be a dictionnary")
        
        # Generate paths
        finder = PathFinder()
        finder.generate_projectRoot()
        finder.update_showId(showId)
        finder.update_template(cls.__name__, "root")
        showRoot = finder.generate_result().result

        # Generate folders
        if not os.path.isdir(showRoot):
            os.makedirs(showRoot)

            finder.update_template(cls.__name__, "episodes")
            episodesFolder = finder.generate_result().result
            finder.update_template(cls.__name__, "delivery")
            deliveryFolder = finder.generate_result().result
            finder.update_template(cls.__name__, "editorial")
            editorialFolder = finder.generate_result().result
            finder.update_template(cls.__name__, "preproduction")
            preproductionFolder = finder.generate_result().result

            os.makedirs(episodesFolder)
            os.makedirs(deliveryFolder)
            os.makedirs(editorialFolder)
            os.makedirs(preproductionFolder)

        else:
            raise Exception("This show folder already exist")

        # Generate id.json
        finder.update_template(cls.__name__, "id")
        idFilepath = finder.generate_result().result
        showDatas = {
            "category":     newShow.category,
            "status":       newShow.status,
            "description":  newShow.description,
            "userDatas":    newShow.userDatas
            }

        with open(idFilepath, "w") as idFile:
            json.dump(showDatas, idFile)

        return newShow
        
        
    @classmethod
    def search(cls, characters, perfectMatch = False):
        """Search for existing shows id corresponding to the given input.

        :param characters: The text input to use to search
        :type characters: str
        :param identical: if True, will return only perfect matches, defaults to False
        :type identical: bool, optional
        :raises Exception: Raises an error if arguments are of the wrong type
        :return: A list of found shows
        :rtype: list(str)
        """

        if not characters or not isinstance(characters, str):
            raise Exception("The characters arg must be a string.")

        finder = PathFinder()
        finder.generate_projectRoot()
        finder.update_template(cls.__name__ ,"parent")
        parentFolder = finder.generate_result().result

        searchResults = cls.findItems(parentFolder, characters, perfectMatch)

        return searchResults


class Episode(ItemBase):
    
    def __init__(self,
                 parentShow = None,
                 episodeId = None):
        
        super().__init__()

        self.parentShow = parentShow
        self.episodeId = episodeId

    @classmethod
    def create(cls,
               parentShow,
               episodeId):
        
        """Create a new episode. Create its folders.
        Returns the epîsode as an item Prins class.

        :param episodeId: The name of the episode
        :type episodeId: str
        :param parentShow: The name of the parent show
        :type parentShow: str
        :raises Exception: Raises an error if the episode already exists
        :raises Exception: Raises an error if the folder already exists
        :return: The episode as a Prins item
        :rtype: object
        """
        
        #TODO This item might need an id.json for production tracking purpose.

        newEpisode = Episode()

        # Get user defined episodeId
        if episodeId and isinstance(episodeId, str):
            if not Episode.search(parentShow, episodeId, perfectMatch = True):
                newEpisode.parentShow = parentShow
                newEpisode.episodeId = episodeId
                
            else:
                raise Exception("You are trying to create an already existing episode : %s"%episodeId)
        else:
            raise TypeError("Episode.episodeId must be a string")

        
        # Generate paths
        finder = PathFinder()
        finder.generate_projectRoot()
        finder.update_showId(parentShow)
        finder.update_episodeId(episodeId)
        finder.update_template(cls.__name__, "root")
        episodeRoot = finder.generate_result().result

        if not episodeRoot:
            return

        # Generate folders
        if not os.path.isdir(episodeRoot):
            os.makedirs(episodeRoot)

        else:
            raise Exception("This episode folder already exist")

        return newEpisode
        
        
    @classmethod
    def search(cls, parent, characters, perfectMatch = False):
        """Search for existing shows id corresponding to the given input.

        :param parent: The parent item (show) to use to search
        :type characters: str
        :param characters: The text input to use to search
        :type characters: str
        :param perfectMatch: if True, will return only perfect matches, defaults to False
        :type perfectMatch: bool, optional
        :raises Exception: Raises an error if arguments are of the wrong type
        :return: A list of found episodes
        :rtype: list(str)
        """

        if not characters or not isinstance(characters, str):
            raise Exception("The characters arg must be a string.")

        if not parent or not isinstance(parent, str):
            raise Exception("The parent arg must be a string.")

        finder = PathFinder()
        finder.generate_projectRoot()
        finder.update_showId(parent)
        finder.update_template(cls.__name__ ,"parent")
        parentFolder = finder.generate_result().result

        searchResults = cls.findItems(parentFolder, characters, perfectMatch)

        return searchResults


class Sequence(ItemBase):
    
    def __init__(self,
                 parentShow = None,
                 parentEpisode = None,
                 sequenceId = None):
        
        super().__init__()

        self.parentShow = parentShow
        self.parentEpisode = parentEpisode
        self.sequenceId = sequenceId

    @classmethod
    def create(cls,
               parentShow,
               parentEpisode,
               sequenceId):
        
        """Create a new sequence. Create its folders.
        Returns the sequence as an item Prins class.

        :param parentShow: The name of the parent show.
        :type parentShow: str
        :param parentEpisode: The name of the parent episode
        :type parentEpisode: str
        :param sequenceId: The name of the sequence
        :type sequenceId: str
        :raises Exception: Raises an error if the sequence already exists
        :raises Exception: Raises an error if the folder already exists
        :return: The sequence as a Prins item
        :rtype: object
        """
        
        #TODO This item might need an id.json for production tracking purpose.

        newSequence = Sequence()

        # Get user defined sequenceId
        if sequenceId and isinstance(sequenceId, str):
            if not Sequence.search(parentShow, parentEpisode, sequenceId, perfectMatch = True):
                newSequence.sequenceId = sequenceId
                newSequence.parentShow = parentShow
                newSequence.parentEpisode = parentEpisode
            else:
                raise Exception("You are trying to create an already existing sequence : %s"%sequenceId)
        else:
            raise TypeError("Sequence.sequenceId must be a string")

        
        # Generate paths
        finder = PathFinder()
        finder.generate_projectRoot()
        finder.update_showId(parentShow)
        finder.update_episodeId(parentEpisode)
        finder.update_sequenceId(sequenceId)
        finder.update_template(cls.__name__, "root")
        sequenceRoot = finder.generate_result().result

        if not sequenceRoot:
            return

        # Generate folders
        if not os.path.isdir(sequenceRoot):
            os.makedirs(sequenceRoot)

        else:
            raise Exception("This episode folder already exist")

        return newSequence
        
        
    @classmethod
    def search(cls, parentShow, parentEpisode, characters, perfectMatch = False):
        """Search for existing shows id corresponding to the given input.

        :param parentShow: The parent item (show) to use to search
        :type parentShow: str
        :param parentEpisode: The parent item (episode) to use to search
        :type parentEpisode: str
        :param characters: The text input to use to search
        :type characters: str
        :param perfectMatch: if True, will return only perfect matches, defaults to False
        :type perfectMatch: bool, optional
        :raises Exception: Raises an error if arguments are of the wrong type
        :return: A list of found episodes
        :rtype: list(str)
        """

        if not characters or not isinstance(characters, str):
            raise Exception("The characters arg must be a string.")

        if not parentShow or not isinstance(parentShow, str):
            raise Exception("The parentShow arg must be a string.")
        if not parentEpisode or not isinstance(parentEpisode, str):
            raise Exception("The parentEpisode arg must be a string.")

        finder = PathFinder()
        finder.generate_projectRoot()
        finder.update_showId(parentShow)
        finder.update_episodeId(parentEpisode)
        finder.update_template(cls.__name__ ,"parent")
        parentFolder = finder.generate_result().result

        searchResults = cls.findItems(parentFolder, characters, perfectMatch)

        return searchResults


class Shot(ItemBase):
    
    def __init__(self, 
                 parentShow = None,
                 parentEpisode = None,
                 parentSequence = None, 
                 shotId = None):
        
        super().__init__()

        self.parentShow = parentShow
        self.parentEpisode = parentEpisode
        self.parentSequence = parentSequence
        self.shotId = shotId

        
    @classmethod
    def create(cls,
               parentShow,
               parentEpisode,
               parentSequence, 
               shotId):
        
        """Create a new shot. Create its folders.
        Returns the shot as an item Prins class.

        :param parentShow: The name of the parent show.
        :type parentShow: str
        :param parentEpisode: The name of the parent episode
        :type parentEpisode: str
        :param parentSequence: The name of the parent sequence
        :type parentSequence: str
        :param shotId: The name of the shot
        :type shotId: str
        :raises Exception: Raises an error if the shot already exists
        :raises Exception: Raises an error if the folder already exists
        :return: The shot as a Prins item
        :rtype: object
        """
        
        #TODO This item might need an id.json for production tracking purpose.

        newShot = Shot()

        # Get user defined assetId
        if shotId and isinstance(shotId, str):
            if not Shot.search(parentShow, parentEpisode, parentSequence, shotId, perfectMatch = True):
                newShot.shotId = shotId
            else:
                raise Exception("You are trying to create an already existing shot : %s"%shotId)
        else:
            raise TypeError("Shot.shotId must be a string")


        # Generate paths
        finder = PathFinder()
        finder.generate_projectRoot()
        finder.update_showId(parentShow)
        finder.update_episodeId(parentEpisode)
        finder.update_sequenceId(parentSequence)
        finder.update_shotId(shotId)
        finder.update_template(cls.__name__, "root")
        shotRoot = finder.generate_result().result

        # Generate folders
        if not os.path.isdir(shotRoot):
            os.makedirs(shotRoot)

            finder.update_template(cls.__name__, "publishs")

            for task in Task().listValues():
                # Generate only shot tasks folders
                if task > 50 and task < 99:
                    taskName = Task().asString(task)
                    finder.update_task(taskName)
                    taskPath = finder.generate_result().result
                    os.makedirs(taskPath)

        else:
            raise Exception("The shot folder already exist")

        return newShot
        
        
    @classmethod
    def search(cls, parentShow, parentEpisode, parentSequence, characters, perfectMatch = False):
        """Search for existing shows id corresponding to the given input.

        :param parentShow: The parent item (show) to use to search
        :type parentShow: str
        :param parentEpisode: The parent item (episode) to use to search
        :type parentEpisode: str
        :param parentSequence: The parent item (sequence) to use to search
        :type parentSequence: str
        :param characters: The text input to use to search
        :type characters: str
        :param perfectMatch: if True, will return only perfect matches, defaults to False
        :type perfectMatch: bool, optional
        :raises Exception: Raises an error if arguments are of the wrong type
        :return: A list of found episodes
        :rtype: list(str)
        """

        if not characters or not isinstance(characters, str):
            raise Exception("The characters arg must be a string.")

        if not parentShow or not isinstance(parentShow, str):
            raise Exception("The parentShow arg must be a string.")
        if not parentEpisode or not isinstance(parentEpisode, str):
            raise Exception("The parentEpisode arg must be a string.")
        if not parentSequence or not isinstance(parentSequence, str):
            raise Exception("The parentSequence arg must be a string.")

        finder = PathFinder()
        finder.generate_projectRoot()
        finder.update_showId(parentShow)
        finder.update_episodeId(parentEpisode)
        finder.update_sequenceId(parentSequence)
        finder.update_template(cls.__name__ ,"parent")
        parentFolder = finder.generate_result().result

        searchResults = cls.findItems(parentFolder, characters, perfectMatch)

        return searchResults
