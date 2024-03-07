from PySide2    import QtCore
from PySide2    import QtWidgets
from PySide2    import QtGui

from prins.explorer     import PathFinder
from prins.items        import Show
from prins.items        import Asset
from prins.items        import Episode
from prins.items        import Sequence
from prins.items        import Shot
from prins.subItems     import Task

from pGui.Ui_fileOpenDialog import Ui_fileSaveDialogWidget

from maya import cmds
from maya import mel
from maya   import OpenMayaUI
from shiboken2 import wrapInstance

import os

class FileOpenWidget(QtWidgets.QWidget, Ui_fileSaveDialogWidget):
    def __init__(self):
        super().__init__()
        self.setupUi(self)

class FileOpenWindow (QtWidgets.QMainWindow):

    window = None

    def __init__(self, parent):
        super().__init__(parent = parent)
        self.setObjectName("FileOpenWindow")
        self.setWindowTitle("Open file...")
        
        self.mainWidget = FileOpenWidget()

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
        self.mainWidget.saveBtn.clicked.connect(self.doOpen)

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

    def doOpen(self):

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

            # Generate the path
            finder.update_template("Asset", "workspace")
            workspacePath = finder.generate_result().result
            cmds.workspace(workspacePath, o = True)
            try:
                scenesPath = "%s/%s"%(workspacePath, cmds.workspace(fre = "scene"))
            except:
                raise Exception("Cannot open this file because it doesn't exist.")

            # Get last scene
            allScenes = os.listdir(os.path.normpath(scenesPath))
            toOpen = allScenes[-1]

            cmds.file(toOpen, o=True, force = True)


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

            # Generate the path
            finder.update_template("Shot", "workspace")
            workspacePath = finder.generate_result().result
            cmds.workspace(workspacePath, o = True)
            scenesPath = "%s/%s"%(workspacePath, cmds.workspace(fre = "scene"))

            # Get last scene
            allScenes = os.listdir(os.path.normpath(scenesPath))
            toOpen = allScenes[-1]

            cmds.file(toOpen, o=True)


        # Close the save dialog
        mel.eval('print "> PRINS Successfully opened your file.\\n"')
        self.hide()
        self.destroy()


def openWindow():
    if QtWidgets.QApplication.instance():
        for win in (QtWidgets.QApplication.allWindows()):
            if 'FileOpenWindow' in win.objectName(): 
                win.destroy()

    ptr = OpenMayaUI.MQtUtil.mainWindow()
    mayaMainWindow = wrapInstance(int(ptr), QtWidgets.QWidget)
    
    FileOpenWindow.window = FileOpenWindow(parent = mayaMainWindow)
    FileOpenWindow.window.show()

openWindow()