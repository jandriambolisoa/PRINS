from collections.abc import Hashable
import os
from typing import Any
import yaml
from yaml.nodes import MappingNode

class AppsDatas:

    @staticmethod
    def getAppsDataFolder():
        """Returns the directory containing app datas

        :raises IsADirectoryError: This error is raised if the folder does not exist
        :return: os.path.normpath 'ed path
        :rtype: string
        """

        folderpath, filename = os.path.split(os.path.normpath(__file__))
        dataFolder = folderpath.split("\\")[:-1]
        dataFolder.extend(["appsData",])
        dataFolder = "/".join(dataFolder)

        if os.path.isdir(dataFolder):
            return os.path.normpath(dataFolder)
        else:
            raise IsADirectoryError("Could not find the directory : %s"%dataFolder)
        
    @staticmethod
    def getProjectList():
        """Returns projects found from the data files

        :return: The projects in a list
        :rtype: list(string)
        """
        projects = []
        appDataFolder = AppsDatas.getAppsDataFolder()
        for file in os.listdir(appDataFolder):
            filepath = os.path.join(appDataFolder, file)
            with open(filepath, "r") as f:
                data = yaml.safe_load(f)

            for k in data.keys():
                projects.append(k)

        projects = list(set(projects))

        return projects

    @staticmethod
    def getAppsDataForThisProject(projectName):
        """Returns the datas for each app file in a list if a
        setup for this project exists

        :param projectName: The name of the project
        :type projectName: string
        :return: A list of dictionnaries
        :rtype: list(dict)
        """
        allApps = []
        appDataFolder = AppsDatas.getAppsDataFolder()

        # Read each appsData file
        appsFiles = os.listdir(appDataFolder)
        for file in appsFiles:
            filepath = os.path.join(appDataFolder, file)
            with open(filepath, "r") as f:
                datas = yaml.load(f, YAMLMultiKeyPathLoader)
            
            # Check if there is a setup for that project
            if projectName in datas:
                appData = datas[projectName]
                allApps.append(appData)

        return allApps
    
class YAMLMultiKeyPathLoader(yaml.SafeLoader):
    """This class is a loader for the yaml.load method
    This allows keys to be duplicated. The strings will
    combine themselves seperated by a ';'
    """

    def construct_mapping(self, node, deep = False):

        mapping = {}
        for key_node, value_node in node.value:
            value = self.construct_object(value_node, deep = deep)
            key = self.construct_object(key_node, deep = deep)
            if key in mapping:
                mapping[key] = "%s;%s"%(mapping[key], value)
            else:
                mapping[key] = value

        return mapping