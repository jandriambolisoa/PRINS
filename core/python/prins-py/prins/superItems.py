import os
import yaml
import json

#
# ItemBase is the base class for all the other items
#

class ItemBase:

    """Base class for any 'Prins Item'
    When adding attributes to children classes, they must follow
    this rule :
    - Attribute name must start with a k
    - Attribute value must be an integer
    """

    def __init__(self) -> None:
        pass

    def __str__(self):
        return str("<Prins Object : %s>"%(self.__class__.__name__))
    
    def asString(self, kValue):
        """Returns the string version of an item variable

        :param kValue: Key value
        :type kValue: int
        :return: The key as a text
        :rtype: string
        """
        # Import labels yaml file as a dict
        folderpath, filename = os.path.split(os.path.normpath(__file__))
        labelsPath = os.path.join(folderpath, "labels.yml")
        with open(labelsPath, "r") as f:
            labels = yaml.safe_load(f)

        return labels[self.__class__.__name__].get(kValue, "Unknown")
    
    def asInt(self, label):
        """Returns the int version of an item label

        :param label: The label
        :type label: str
        :return: The label as a int
        :rtype: int
        """
        # Import labels yaml file as a dict
        folderpath, filename = os.path.split(os.path.normpath(__file__))
        labelsPath = os.path.join(folderpath, "labels.yml")
        with open(labelsPath, "r") as f:
            labels = yaml.safe_load(f)

        # Inverse the dict
        inv_dict = {v: k for k, v in labels[self.__class__.__name__].items()}

        return inv_dict[label]
    
    def listKeys(self):
        """Returns a list of every item's attribute

        :return: Every item's attr
        :rtype: list(str,)
        """
        allKeys = []
        classAsDict = self.__class__.__dict__

        for key in list(classAsDict.keys()):
            if "k" in key[0]:
                allKeys.append(key)

        return allKeys
    
    def listValues(self):
        """Returns a list of every item's attribute's value

        :return: Every item's attr value
        :rtype: list(int,)
        """
        allValues = []
        allKeys = self.listKeys()
        classAsDict = self.__class__.__dict__

        for key in allKeys:
            allValues.append(classAsDict[key])

        return allValues
    
    @staticmethod
    def findItems(parentItemFolder, value = "*", perfectMatch = False):
        """Returns a list of items name corresponding to the search request

        :param parentItemFolder: The folder path to search into
        :type parentItemFolder: str
        :param value: The search request, defaults to "*"
        :type value: str, optional
        :param perfectMatch: If True, will returns only the perfect matching result, defaults to False
        :type perfectMatch: bool, optional
        :raises TypeError: Raises an error if arguments are of the wrong type
        :return: A list of found items
        :rtype: list(str,)
        """

        if not isinstance(value, str) or not isinstance(parentItemFolder, str):
            raise TypeError("Arguments must be of type string")

        os.path.normpath(parentItemFolder)

        # List all the items
        if os.path.isdir(parentItemFolder):
            allItems = os.listdir(parentItemFolder)

            # Keep corresponding items
            if value != "*":
                foundItems = []
                
                if perfectMatch:
                    for item in allItems:
                        if value == item:
                            foundItems.append(item)
                            break
                else:
                    for item in allItems:
                        if value in item:
                            foundItems.append(item)

                return foundItems

            else:
                return allItems
