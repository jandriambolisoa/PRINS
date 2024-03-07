import  os
import  sys
import  json
from    maya    import cmds
from    maya    import mel

class MenuLoader:

    def __init__(self, menuName):
        ''' Init the class.'''
        self._menuName = menuName
        self.gMainWindow = mel.eval( '$tmpVar = $gMainWindow' )
        
        self.subNames = ['Utils',]


    def createMenu(self):
        """Create a menu and its sub menus

        :return: The created menu
        :rtype: object cmds.menu
        """
        print('CREATING %s MENU'%self._menuName)

        #Check if the menu exists, delete if it does
        if (cmds.menu(self._menuName, exists = True)):
            cmds.deleteUI(self._menuName)
        
        #Create the menu
        menu = cmds.menu(self._menuName, parent=self.gMainWindow)

        # Add main 'File' features
        self.fileMenu()

        cmds.menuItem(divider = True, dividerLabel = 'Tools', parent = menu)

        #Create a deployable menu item for each departement
        for sub in self.subNames:
            cmds.menuItem(sub, label = sub, subMenu = True, parent = menu)

        cmds.menuItem(divider = True, dividerLabel = 'Others', parent = menu)

        #Return the menu
        return menu


    def loadScript(self):
        """Load scripts in the menu

        :raises NotADirectoryError: Scripts folder is mispelled
                                    or at the wrong place or inexistant
        """
        print('#%s Loading scripts'%(self._menuName))
        #Get the path of the scripts
        folderPath, scriptfile = os.path.split(os.path.normpath(__file__))
        scriptsFolderPath = os.path.join(folderPath, 'scripts')
        # Check if this folder exists before continuing.
        if( not os.path.exists(scriptsFolderPath) ):
            raise NotADirectoryError( 'Can not find the script folder in %s.' % folderPath )

        # Get all the folders inside the scripts folder.
        for scriptFolder in os.listdir(scriptsFolderPath):
            
            #Get script folder path
            scriptFolderPath = os.path.join(scriptsFolderPath, scriptFolder)

            #Get script file path
            allScriptVersionsPath = os.listdir(os.path.join(scriptFolderPath, 'src'))
            scriptVersion = []

            for versionPath in allScriptVersionsPath:
                if versionPath.find(".py") > -1:
                    scriptVersion.append(versionPath)

            scriptFilePath = os.path.join(scriptFolderPath, 'src', scriptVersion[-1])

            #Get script data from json file
            jsonFile = os.path.join(scriptFolderPath, 'script.json')
            with open(jsonFile, 'r') as jsonFile:
                scriptData = json.load(jsonFile)

            #Get icon file path
            iconPath = os.path.join(scriptFolderPath, 'icon.png')

            print('Loading %s' % scriptData['scriptName'])

            # Append image data to scriptData
            if os.path.isfile(iconPath):
                scriptData['icon'] = iconPath
            else:
                scriptData['icon'] = 'pythonFamily.png'

            #Read the departement data
            scriptSubMenu = scriptData['subMenu']

            #If no departements, put the script outside submenus
            if not scriptSubMenu in self.subNames:
                scriptSubMenu = self._menuName

            # Add the script content to variable.
            with open(scriptFilePath, 'r') as script:
                # Get the script content.
                script = script.read()

            #Add the menu in the departement sub menu
            cmds.menuItem(scriptData['scriptName'],
                annotation = scriptData['annotation'],
                image = scriptData['icon'],
                imageOverlayLabel = scriptData['buttonLabel'],
                command = script,
                sourceType = scriptData['scriptType'],
                parent = scriptSubMenu)

        cmds.menuItem(divider = True, parent = self._menuName)
        cmds.menuItem(label = 'Refresh menu', command = self.refreshMenu ,parent = self._menuName)

    def refreshMenu(self, *args):
        """Delete the menu and reload it

        :raises Exception: userSetup.py wasn't found
        """
        try:
            self.createMenu()
            self.loadScript()
        except:
            raise Exception("Cannot refresh menu.")
        
    def fileMenu(self):

        # Get the relative path
        folderPath, scriptfile = os.path.split(os.path.normpath(__file__))
        scriptsFolderPath = os.path.join(folderPath, 'file')

        for scriptFolder in os.listdir(scriptsFolderPath):
            
            #Get script folder path
            scriptFolderPath = os.path.join(scriptsFolderPath, scriptFolder)

            #Get script file path
            allScriptVersionsPath = os.listdir(os.path.join(scriptFolderPath, 'src'))
            scriptVersion = []

            for versionPath in allScriptVersionsPath:
                if versionPath.find(".py") > -1:
                    scriptVersion.append(versionPath)

            scriptFilePath = os.path.join(scriptFolderPath, 'src', scriptVersion[-1])

            #Get script data from json file
            jsonFile = os.path.join(scriptFolderPath, 'script.json')
            with open(jsonFile, 'r') as jsonFile:
                scriptData = json.load(jsonFile)

            # Add the script content to variable.
            with open(scriptFilePath, 'r') as script:
                # Get the script content.
                script = script.read()

            #Add the menu in the departement sub menu
            cmds.menuItem(scriptData['scriptName'],
                annotation = scriptData['annotation'],
                command = script,
                sourceType = scriptData['scriptType'],
                parent = self._menuName)