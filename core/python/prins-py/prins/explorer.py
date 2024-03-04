import os
import yaml

from .items import Task

class PathFinder:

    def __init__(self) -> None:
        """The Prins PathFinder class is designed to generate pipeline
        friendly filenames and filepaths. This class is a builder.
        WARNING : Attributes must not be edited directly. Methods are
        available to do so.
        """

        self.result = None

        self.template = None
        self.datas = {
            "projectRoot": None,
            "task": None,
            "assetId": None,
            "version": None,
            "iteration": None,
            "UDIM": None,
            "showId": None,
            "episodeId": None,
            "sequenceId": None,
            "shotId": None,
            "dcc": None,
            "file": None
        }

    def __str__(self) -> str:
        return str("<Prins Object : PathFinder>")


    def update_projectRoot(self, input):
        """Update the projectRoot key from the self.datas with the user input

        :param input: projectRoot as a string
        :type input: str
        :raises TypeError: Raises an error if the input is of the wrong type
        :raises Exception: Raises an error if the input has no slashes
        :return: The current instance of PathFinder
        :rtype: self
        """
        # Make sure the input is an str
        if not isinstance(input, str):
            raise TypeError("The input arg must be a string")
        
        # Check if the root is a valid path
        if not (input.find("/") > -1) or not (input.find("\\") > -1):
            raise Exception("The project root must be a valid path")

        # Update datas
        data = {"projectRoot":os.path.normpath(input)}
        self.replaceDatas(data)

        return self


    def update_task(self, input):
        """Update the task key from the self.datas with the user input

        :param input: Must be a Task attribute
        :type input: int
        :raises TypeError: Raises an error if the input is of the wrong type
        :raises ValueError: Raises an error if the Task.kValue is unknown
        :return: The current instance of PathFinder
        :rtype: self
        """
        # Make sure the input is an int
        if not isinstance(input, int):
            raise TypeError("The input arg must be a of type Task.kValue")
        
        # Convert the input to a string
        input = Task.asString(input)
        if input == "Unknown":
            raise ValueError("The Task.kValue is not recognized.")
        
        # Update datas
        data = {"task":input}
        self.replaceDatas(data)

        return self


    def update_assetId(self, input):
        """Update the assetId key from the self.datas with the user input

        :param input: assetId as a string
        :type input: str
        :raises TypeError: Raises an error if the input is of the wrong type
        :return: The current instance of PathFinder
        :rtype: self
        """
        # Make sure the input is an str
        if not isinstance(input, str):
            raise TypeError("The input arg must be a string")
        
        # Update datas
        data = {"assetId":input}
        self.replaceDatas(data)

        return self


    def update_version(self, input):
        """Update the version key from the self.datas with the user input

        :param input: version as an integer
        :type input: int
        :raises TypeError: Raises an error if the input is of the wrong type
        :raises ValueError: Raises an error if the input is not between 0 and 999
        :return: The current instance of PathFinder
        :rtype: self
        """
        # Make sure the input is an int
        if not isinstance(input, int):
            raise TypeError("The input arg must be an integer")
        
        # Convert the input to a string
        if input < 0 or input > 999:
            raise ValueError("The version must be between 0 and 999")
        input = "v%03d"%input

        # Update datas
        data = {"version":input}
        self.replaceDatas(data)

        return self


    def update_iteration(self, input):
        """Update the iteration key from the self.datas with the user input

        :param input: iteration as an integer
        :type input: int
        :raises TypeError: Raises an error if the input is of the wrong type
        :raises ValueError: Raises an error if the input is not between 0 and 999
        :return: The current instance of PathFinder
        :rtype: self
        """
        # Make sure the input is an str
        if not isinstance(input, int):
            raise TypeError("The input arg must be an integer")
        
        # Convert the input to a string
        if input < 0 or input > 999:
            raise ValueError("The iteration must be between 0 and 999")
        input = "%03d"%input

        # Update datas
        data = {"iteration":input}
        self.replaceDatas(data)

        return self


    def update_UDIM(self, input):
        """Update the UDIM key from the self.datas with the user input

        :param input: UDIM as an integer
        :type input: int
        :raises TypeError: Raises an error if the input is of the wrong type
        :raises ValueError: Raises an error if the input is inferior to 1001
        :return: The current instance of PathFinder
        :rtype: self
        """
        # Make sure the input is an int
        if not isinstance(input, int):
            raise TypeError("The input arg must be an integer")
        
        # Convert the input to a string
        if input < 1001:
            raise ValueError("The UDIM value must be greater than 1001")
        input = "%03d"%input

        # Update datas
        data = {"UDIM":input}
        self.replaceDatas(data)

        return self


    def update_showId(self, input):
        """Update the showId key from the self.datas with the user input

        :param input: showId as a string
        :type input: str
        :raises TypeError: Raises an error if the input is of the wrong type
        :return: The current instance of PathFinder
        :rtype: self
        """
        # Make sure the input is an str
        if not isinstance(input, str):
            raise TypeError("The input arg must be a string")
        
        # Update datas
        data = {"showId":input}
        self.replaceDatas(data)

        return self


    def update_episodeId(self, input):
        """Update the episodeId key from the self.datas with the user input

        :param input: episodeId as a string
        :type input: str
        :raises TypeError: Raises an error if the input is of the wrong type
        :return: The current instance of PathFinder
        :rtype: self
        """
        # Make sure the input is an str
        if not isinstance(input, str):
            raise TypeError("The input arg must be a string")
        
        # Update datas
        data = {"episodeId":input}
        self.replaceDatas(data)

        return self


    def update_sequenceId(self, input):
        """Update the sequenceId key from the self.datas with the user input

        :param input: sequenceId as a string
        :type input: str
        :raises TypeError: Raises an error if the input is of the wrong type
        :return: The current instance of PathFinder
        :rtype: self
        """
        # Make sure the input is an str
        if not isinstance(input, str):
            raise TypeError("The input arg must be a string")
        
        # Update datas
        data = {"sequenceId":input}
        self.replaceDatas(data)

        return self


    def update_shotId(self, input):
        """Update the shotId key from the self.datas with the user input

        :param input: shotId as a string
        :type input: str
        :raises TypeError: Raises an error if the input is of the wrong type
        :return: The current instance of PathFinder
        :rtype: self
        """
        # Make sure the input is an str
        if not isinstance(input, str):
            raise TypeError("The input arg must be a string")
        
        # Update datas
        data = {"shotId":input}
        self.replaceDatas(data)

        return self


    def update_dcc(self, input):
        """Update the dcc key from the self.datas with the user input

        :param input: dcc as a string
        :type input: str
        :raises TypeError: Raises an error if the input is of the wrong type
        :return: The current instance of PathFinder
        :rtype: self
        """
        # Make sure the input is an str
        if not isinstance(input, str):
            raise TypeError("The input arg must be a string")
        
        # Update datas
        data = {"dcc":input}
        self.replaceDatas(data)

        return self


    def update_file(self, input):
        """Update the file key from the self.datas with the user input

        :param input: filename as a string
        :type input: str
        :raises TypeError: Raises an error if the input is of the wrong type
        :raises Exception: Raises an error if the input has no extension
        :return: The current instance of PathFinder
        :rtype: self
        """
        # Make sure the input is an str
        if not isinstance(input, str):
            raise TypeError("The input arg must be a string")
        # Check if the filename has an extension
        if not os.path.splitext(input)[1]:
            raise Exception("The input must be a valid filename")

        # Update datas
        data = {"file":input}
        self.replaceDatas(data)

        return self


    def update_template(self, type, template):
        """Update the template attribute.

        :param type: The type of template
        :type type: str
        :param template: The template name
        :type template: str
        :return: The current instance of PathFinder
        :rtype: self
        """
        t = self.getTemplate(type, template)
        self.template = t

        return self


    def update_datasFromPath(self, path):
        """Extract datas from a path according to the given self.template

        :param path: The path to extract datas from
        :type path: str
        :raises Exception: This method needs the project root to be set
        :raises Exception: This method needs the template to be set
        :raises TypeError: Raises an error if the path argument is of the wrong type
        :raises Exception: Raises an error if the template and the path are not corresponding
        :return: The current instance of PathFinder
        :rtype: self
        """

        # First check if there is a project root, a template and the input type
        if not self.datas["projectRoot"]:
            raise Exception("A project root must be set before updating datas from path")
        if not self.template:
            raise Exception("A template must be set before updating datas from path")
        if not isinstance(path, str):
            raise TypeError("The path argument must be a string")

        path = os.path.normpath(path)

        # Parse the path
        # Split path and template into a list
        rootlessPath = path.lstrip(self.datas["projectRoot"])
        userKeys = rootlessPath.split("\\").insert(0, self.datas["projectRoot"])

        templateKeys = self.template.split("/")
        
        if len(userKeys) != len(templateKeys):
            raise Exception("The path is not corresponding to the given template")
        
        # Extract the datas
        extractedDatas = {}

        for i in range(len(userKeys)):
            if templateKeys[i].find("{") > -1:
                key = templateKeys.strip("{ }")
                value = userKeys[i]

                extractedDatas[key] = value

        # Update datas
        self.replaceDatas(extractedDatas)
        return self


    def update_datasFromFilename(self, filename, template, type = "Files"):
        """Extract datas from a filename according to the given template

        :param filename: The filename to parse
        :type filename: str
        :param template: The template name to use
        :type template: str
        :param type: The template type to use, this arg must not be edited, defaults to "Files"
        :type type: str, optional
        :raises TypeError: Raises an error if arguments are of the wrong type
        :raises Exception: Raises an error if the filename has no extension
        :raises Exception: Raises an error if the filename does not correspond to the template
        :return: The current instance of PathFinder
        :rtype: self
        """

        # Check if arguments are string and that the filename is valid
        if not isinstance(filename, str) or not isinstance(template, str):
            raise TypeError("Arguments must be of type string")
        if not os.path.splitext(filename)[1]:
            raise Exception("The filename must be a valid filename")

        template = self.getTemplate(type, template)

        # Parse the filename and template
        # Split filename and template into a list
        filename = os.path.splitext(filename)[0]
        splittedFilename = filename.split(".")
        userKeys = splittedFilename[0].split("_")
        if len(splittedFilename) > 1:
            userKeys.append(splittedFilename[1])

        template = os.path.splitext(template)[0]
        splittedTemplate = template.split(".")
        templateKeys = template[0].split("_")
        if len(splittedTemplate) > 1:
            templateKeys.append(splittedTemplate[1])
        
        if len(userKeys) != len(templateKeys):
            raise Exception("The filename is not corresponding to the given template")
        
        # Extract the datas
        extractedDatas = {}

        for i in range(len(userKeys)):
            if templateKeys[i].find("{") > -1:
                key = templateKeys.strip("{ }")
                value = userKeys[i]

                extractedDatas[key] = value

        # Update datas
        self.replaceDatas(extractedDatas)
        return self


    def generate_projectRoot(self):
        """Generate and update the project root.

        :raises Exception: Raises an error if the generation failed.
        :return: The current instance of PathFinder
        :rtype: self
        """

        # Find the right project root from this file
        # The PRINS framework must be in the project root
        try:
            filepath = os.path.normpath(__file__)
            splitPath = filepath.split("\\")
            i = splitPath.index("PRINS")
            filepath = "\\".join(splitPath[:i])
        except:
            raise Exception("An error occured. Cannot generate the project root.")

        return self


    def generate_file(self, template, type = "Files"):
        """Generate a filename and update the file key in self.datas.

        :param template: The template name to use
        :type template: str
        :param type: The type of template, this arg must not be used, defaults to "Files"
        :type type: str, optional
        :raises TypeError: Raises an error if the template arg is of the wrong type
        :raises Exception: Raises an error if the variable substitution failed
        :return: The current instance of PathFinder
        :rtype: self
        """
        # Make sure the input is an str
        if not isinstance(template, str):
            raise TypeError("The input arg must be a string")
        
        # Do variable substitution on requested template
        fileTemplate = self.getTemplate(type, template)
        try:
            filename = fileTemplate.format(**self.datas)
        except:
            raise Exception("An error occured. Datas might be incomplete or wrong")

        # Update datas
        data = {"file":filename}
        self.replaceDatas(data)

        return self
        

    def generate_result(self):
        """Find a path by combining a given template and user defined datas

        :param template: A string to format representing a path
        :type template: str
        :raises Exception: Raises a custom error if argument is missing
        :raises Exception: Raises an error if the format method fails
        :return: The current instance of PathFinder
        :rtype: self
        """
        try:
            if self.template:
                self.result = os.path.normpath(self.template.format(**self.datas))
                return self
            else:
                self.result = None
                raise Exception("Missing template.")
        except:
            self.result = None
            raise Exception("An error occured. Datas might be incomplete or wrong")


    def increment_version(self, value = 1):
        """Update the version value

        :param value: Incrementation amount, defaults to 1
        :type value: int, optional
        :raises Exception: Raises an error if self.datas has no version yet
        :return: The current instance of PathFinder
        :rtype: self
        """
        # Check if the datas contains a version
        if not self.datas["version"]:
            raise Exception("No version found in the datas")
        
        newVersion = int(self.datas["version"].lstrip("v"))
        newVersion += value
        newVersion = "v%03d"%newVersion

        data = {"version": newVersion}
        self.replaceDatas(data)

        return self
    

    def increment_iteration(self, value = 1):
        """Update the iteration value

        :param value: Incrementation amount, defaults to 1
        :type value: int, optional
        :raises Exception: Raises an error if self.datas has no iteration yet
        :return: The current instance of PathFinder
        :rtype: self
        """
        # Check if the datas contains an iteration
        if not self.datas["iteration"]:
            raise Exception("No iteration found in the datas")
        
        newIteration = int(self.datas["iteration"])
        newIteration += value
        newIteration = "%03d"%newIteration

        data = {"iteration": newIteration}
        self.replaceDatas(data)

        return self


    def increment_UDIM(self, value = 1):
        """Update the UDIM value

        :param value: Incrementation amount, defaults to 1
        :type value: int, optional
        :raises Exception: Raises an error if self.datas has no UDIM yet
        :return: The current instance of PathFinder
        :rtype: self
        """
        # Check if the datas contains an UDIM
        if not self.datas["UDIM"]:
            raise Exception("No UDIM found in the datas")
        
        newUDIM = int(self.datas["UDIM"])
        newUDIM += value
        newUDIM = "%s"%newUDIM

        data = {"UDIM": newUDIM}
        self.replaceDatas(data)

        return self
    

    def replaceDatas(self, newDatas):
        """Overrides existing datas with new datas

        :param newDatas: A dictionnary containing datas
        :type newDatas: dict
        :return: The current instance of PathFinder
        :rtype: self
        """
        # Note invalid newDatas keys
        invalidKeys = []

        for k in list(newDatas.keys()):
            if k in list(self.datas.keys()):
                # If the new data is valid, replace
                self.datas[k] = newDatas[k]

            else:
                invalidKeys.append(k)

        # Inform the user if keys were not used
        if (invalidKeys):
            print("At least one data is unknown and cannot be updated : %s"%(invalidKeys))

        return self


    @staticmethod
    def getTemplate(type, template):
        """Returns an unformated path template.

        :param type: The type of template to get
        :type type: str
        :param template: The template name to get
        :type template: str
        :raises ValueError: Raises an error if the requested template does not exist.
        :return: The template with variables to substitute
        :rtype: str
        """
        # Import paths yaml file as a dict
        folderpath, filename = os.path.split(os.path.normpath(__file__))
        filepath = os.path.join(folderpath, "paths.yml")
        with open(filepath, "r") as f:
            paths = yaml.safe_load(f)

        # Get the requested template
        request = paths[type].get(template, "Unknown")
        if request == "Unknown":
            raise ValueError("The template is not recognized.")
        
        return request


    def printMe(self):
        """An elegant way to print infos about the current
        state of this instance.
        """
        # Print what it is
        print("Prins PathFinder instance.")

        # Print the datas
        print("\n> Loaded datas are")
        for k in list(self.datas.keys()):
            print("> %s : %s"%(k, self.datas[k]))

        # Print the template
        print("\n> Loaded template is")
        print("%s"%self.template)

        # Print the current result
        print("\n The current result is")
        print("%s"%(self.result))


    @staticmethod
    def printAvailableTemplatesOfType(type):
        """An elegant way to print all the templates name of a certain type.

        :param type: The type of template.
        :type type: str
        :raises ValueError: Raises an error if the template name is non-existent
        """
        # Import paths yaml file as a dict
        folderpath, filename = os.path.split(os.path.normpath(__file__))
        filepath = os.path.join(folderpath, "paths.yml")
        with open(filepath, "r") as f:
            paths = yaml.safe_load(f)

        type = type.title()

        if type in list(paths.keys()):
            print("Prins PathFinder class")
            print("> Available template of type %s are :"%type)
            for k in list(paths[type].keys()):
                print("> %s"%k)
        else:
            raise ValueError("%s is a non-existent type of template."%type)