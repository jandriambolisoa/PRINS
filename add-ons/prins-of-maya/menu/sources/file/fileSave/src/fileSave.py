from PySide2    import QtCore
from PySide2    import QtWidgets
from PySide2    import QtGui

from shiboken2  import wrapInstance

from prins.explorer     import PathFinder
from prins.items        import Show
from prins.items        import Asset
from prins.items        import Episode
from prins.items        import Sequence
from prins.items        import Shot
from prins.tags     import Task

from pom.gui.Ui_fileSaveDialog import Ui_fileSaveDialogWidget
from pom.utils.mayaWorkspace   import createMayaWorkspace

from maya import OpenMayaUI
from maya import cmds
from maya import mel

import os

class FileSaveWidget(QtWidgets.QWidget, Ui_fileSaveDialogWidget):
    def __init__(self):
        super().__init__()
        self.setupUi(self)

class FileSaveWindow (QtWidgets.QMainWindow):

    def __init__(self, parent):
        super().__init__(parent = parent)
        self.setObjectName("FileSaveWindow")
        self.setWindowTitle("Save file...")
        
        self.mainWidget = FileSaveWidget()

        # Get available shows
        allShows = Show.search("*")
        self.mainWidget.showComboBox.addItems(allShows)

        # Setup Types combo box
        allTypes = ["Asset", "Shot"]
        self.mainWidget.typeComboBox.addItems(allTypes)
        self.mainWidget.typeComboBox.currentTextChanged.connect(self.updateTaskComboBox)

        # Setup Tasks combo box
        self.mainWidget.taskComboBox.currentTextChanged.connect(self.updateList)

        # Setup button
        self.mainWidget.saveBtn.clicked.connect(self.doSave)

        self.setCentralWidget(self.mainWidget)

        self.updateTaskComboBox()
        self.updateList()

    def updateTaskComboBox(self):
        
        # Clear the task combo box
        self.mainWidget.taskComboBox.clear()
        allTasks = []

        # Get the current type
        type = self.mainWidget.typeComboBox.currentText()

        if type == "Asset":
            for value in Task().listValues():
                if value < 50:
                    allTasks.append(Task().asString(value))
        
        elif type == "Shot":
            for value in Task().listValues():
                if value > 50 and value < 99:
                    allTasks.append(Task().asString(value))

        # Populate the task combo box
        self.mainWidget.taskComboBox.addItems(allTasks)
        
    def updateList(self):

        # Clear the list widget
        self.mainWidget.savesFormatListWidget.clear()

        show = self.mainWidget.showComboBox.currentText()

        # List all the available assets or shots
        if self.mainWidget.typeComboBox.currentText() == "Asset":

            # List all the assets
            allAssets = Asset().search("*")

            for asset in allAssets:
                pAsset = Asset.get(asset)

                if show in pAsset.showId:
                    self.mainWidget.savesFormatListWidget.addItem(pAsset.assetId)

        elif self.mainWidget.typeComboBox.currentText() == "Shot":

            # List all the shots
            allEpisodes = Episode.search(show, "*")
            for ep in allEpisodes:
                allSequence = Sequence.search(show, ep, "*")
                for seq in allSequence:
                    allShots = Shot.search(show, ep, seq, "*")
                    for shot in allShots:
                        shotName = "%s/%s/%s"%(ep, seq, shot)
                        self.mainWidget.savesFormatListWidget.addItem(shotName)

    def doSave(self):

        show = self.mainWidget.showComboBox.currentText()
        pShow = Show.get(show)
        type = self.mainWidget.typeComboBox.currentText()
        task = self.mainWidget.taskComboBox.currentText()

        finder = PathFinder()
        finder.generate_projectRoot()
        finder.update_showId(pShow.showId)
        finder.update_task(Task().asInt(task))
        finder.update_dcc("maya")

        if type == "Asset":
            
            # Get selected asset
            selection = self.mainWidget.savesFormatListWidget.selectedItems()
            if not selection:
                mel.eval('print "> Prins : The item selection is empty.\\n"')
                return
            pAsset = Asset.get(selection[0].text())
            finder.update_assetId(pAsset.assetId)

            # Check if a save already exist
            finder.update_template("Asset", "workspace")
            workspacePath = finder.generate_result().result
            createdWorkspace = createMayaWorkspace(workspacePath)
            cmds.workspace(workspacePath, o = True)
            scenesPath = "%s/%s"%(workspacePath, cmds.workspace(fre = "scene"))
            scenesPath = os.path.normpath(scenesPath)

            try:
                os.makedirs(scenesPath)
            except:
                pass

            finder.update_template("Files", "mayaAsset")

            if createdWorkspace:
                
                finder.update_version(1)
                newFile = finder.generate_result().result
                cmds.file(rename = os.path.join(scenesPath, newFile))
                cmds.file(save = True)

            else:
                # If the workspace already exist, look for scenes
                allScene = os.listdir(scenesPath)
                if allScene:
                    lastScene = allScene[-1]
                    try:
                        finder.update_datasFromFilename(lastScene, "mayaAsset")
                        finder.increment_version()
                    except:
                        finder.update_version(1)
                else:
                    finder.update_version(1)

                newFile = finder.generate_result().result
                cmds.file(rename = os.path.join(scenesPath, newFile))
                cmds.file(save = True)
                

        elif type == "Shot":
            
            # Get selected shot
            selection = self.mainWidget.savesFormatListWidget.selectedItems()
            if not selection:
                mel.eval('print "> Prins : The item selection is empty.\\n"')
                return
            episodeId, sequenceId, shotId = selection[0].split("/")
            finder.update_episodeId(episodeId)
            finder.update_sequenceId(sequenceId)
            finder.update_shotId(shotId)

            # Check if a save already exist
            finder.update_template("Shot", "workspace")
            workspacePath = finder.generate_result().result
            createdWorkspace = createMayaWorkspace(workspacePath)
            cmds.workspace(workspacePath, o = True)
            scenesPath = "%s/%s"%(workspacePath, cmds.workspace(fre = "scene"))
            scenesPath = os.path.normpath(scenesPath)

            try:
                os.makedirs(scenesPath)
            except:
                pass

            finder.update_template("Files", "mayaShot")

            if createdWorkspace:
                
                finder.update_version(1)
                newFile = finder.generate_result().result
                cmds.file(rename = os.path.join(scenesPath, newFile))
                cmds.file(save = True, type = "mayaAscii")

            else:
                # If the workspace already exist, look for scenes
                allScene = os.listdir(scenesPath)
                if allScene:
                    lastScene = allScene[-1]
                    try:
                        finder.update_datasFromFilename(lastScene, "mayaShot")
                        finder.increment_version()
                    except:
                        finder.update_version(1)
                else:
                    finder.update_version(1)

                newFile = finder.generate_result().result
                cmds.file(rename = os.path.join(scenesPath, newFile))
                cmds.file(save = True, type = "mayaAscii")

        # Close the save dialog
        mel.eval('print "> PRINS Successfully saved your file.\\n"')
        self.hide()
        self.destroy()

def openWindow():
    if QtWidgets.QApplication.instance():
        for win in (QtWidgets.QApplication.allWindows()):
            if 'FileSaveWindow' in win.objectName(): 
                win.destroy()

    ptr = OpenMayaUI.MQtUtil.mainWindow()
    mayaMainWindow = wrapInstance(int(ptr), QtWidgets.QWidget)
    
    FileSaveWindow.window = FileSaveWindow(parent = mayaMainWindow)
    FileSaveWindow.window.show()

openWindow()