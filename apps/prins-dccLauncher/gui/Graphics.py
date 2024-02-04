import os

class Icons:

    @staticmethod
    def getIconFolderPath():
        """Returns the directory containing icons

        :raises IsADirectoryError: This error is raised if the folder does not exist
        :return: os.path.normpath 'ed path
        :rtype: string
        """

        folderpath, filename = os.path.split(os.path.normpath(__file__))

        iconFolder = os.path.join(folderpath, "icons")

        if os.path.isdir(iconFolder):
            return os.path.normpath(iconFolder)
        else:
            raise IsADirectoryError("Could not find the directory : %s"%iconFolder)
    
    @staticmethod
    def getIconFromName(name):
        """Find icon path corresponding to the given name

        :param name: the name of the icon we are looking for
        :type name: string
        :return: os.path.normpath 'ed path to the icon if found, else return None
        :rtype: string
        """

        iconFolder = Icons.getIconFolderPath()
        iconFile = None

        for file in os.listdir(iconFolder):
            filename, extension = os.path.splitext(file)
            if name == filename:
                iconFile = file
                break

        if iconFile:
            return os.path.normpath(os.path.join(iconFolder, iconFile))
        else:
            return None
        
    @staticmethod
    def defaultIcon():
        """Return the default icon's path

        :return: os.path.normpath 'ed path
        :rtype: string
        """
        iconFolder = Icons.getIconFolderPath()
        iconFile = "Default.png"

        return os.path.normpath(os.path.join(iconFolder, iconFile))
    
    def mainIcon():
        """Return the DCC app icon's path

        :return: os.path.normpath 'ed path
        :rtype: string
        """
        iconFolder = Icons.getIconFolderPath()
        iconFile = "DCC.png"

        return os.path.normpath(os.path.join(iconFolder, iconFile))
    
class Style:

    appButtonHeight = 55
    
    @staticmethod
    def getStyleSheet():
        """Returns the style sheet extracted from the style.css as a string

        :return: Qt like style sheet
        :rtype: string
        """
        
        styleSheet = None
        folderpath, filename = os.path.split(os.path.normpath(__file__))
        stylePath = os.path.join(folderpath, "style.css")
        with open(stylePath, "r") as f:
            styleSheet = f.read()

        return styleSheet
    
    def getBtnStyleSheet():
        """Returns the style sheet extracted from the btn-style.css as a string

        :return: Qt like style sheet
        :rtype: string
        """
        
        styleSheet = None
        folderpath, filename = os.path.split(os.path.normpath(__file__))
        stylePath = os.path.join(folderpath, "btn-style.css")
        with open(stylePath, "r") as f:
            styleSheet = f.read()

        return styleSheet