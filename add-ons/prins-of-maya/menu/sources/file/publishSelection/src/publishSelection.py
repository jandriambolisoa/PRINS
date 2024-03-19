from PySide2    import QtCore
from PySide2    import QtWidgets
from PySide2    import QtGui

from prins.explorer     import PathFinder
from prins.items        import Show
from prins.items        import Asset
from prins.items        import Episode
from prins.items        import Sequence
from prins.items        import Shot
from prins.tags         import Task

from pom.gui.Ui_pomPublisher import Ui_pomPublisherWidget

from maya import cmds
from maya import mel
from maya   import OpenMayaUI
from shiboken2 import wrapInstance

import os

class PublisherWidget(QtWidgets.QWidget, Ui_pomPublisherWidget):
    def __init__(self):
        super().__init__()
        self.setupUi(self)

class PublisherWindow (QtWidgets.QMainWindow):

    window = None

    def __init__(self, parent):
        super().__init__(parent = parent)
        self.setObjectName("PublisherWindow")
        self.setWindowTitle("Publish selection...")
        
        self.mainWidget = PublisherWidget()

        # Setup button
        self.mainWidget.publishBtn.clicked.connect(self.publish)

        self.setCentralWidget(self.mainWidget)

        # Get current context from filename
        self.context = None
        savePath = cmds.file(query = True, sceneName = True)
        saveFolder , saveFilename = os.path.split(savePath)
        self.finder = PathFinder()
        self.finder.generate_projectRoot()
        try:
            self.finder.update_datasFromFilename(saveFilename, "mayaAsset")
            self.context = "Asset"
        except:
            try:
                self.finder.update_datasFromFilename(saveFilename, "mayaShot")
                self.context = "Shot"
            except:
                mel.eval('print "> PRINS ERROR : Unrecognized scene name.\\n"')
                Exception("Cannot find the context from the scene name.")

        if self.context == "Asset":
            self.mainWidget.shotFbxCheckBox.setEnabled(False)
            self.mainWidget.shotAlembicCheckBox.setEnabled(False)
        elif self.context == "Shot":
            self.mainWidget.mayaAssetCheckBox.setEnabled(False)
            self.mainWidget.assetAlembicCheckBox.setEnabled(False)
            self.mainWidget.assetFbxCheckBox.setEnabled(False)

    def publish(self):

        selection = cmds.ls(sl = True, long = True)

        # Check check boxes and publish
        if self.mainWidget.mayaAssetCheckBox.isChecked():
            self.finder.update_template("Files", "mayaAsset")
            publishName = self.finder.generate_result().result
            publishPath = Asset.getPublishFilepath(publishName, "mayaAsset")
            cmds.file(publishPath, exportSelected = True, type = "mayaAscii")

        if self.mainWidget.assetAlembicCheckBox.isChecked():
            self.finder.update_template("Files", "assetAlembic")
            publishName = self.finder.generate_result().result
            publishPath = Asset.getPublishFilepath(publishName, "assetAlembic")
            
            for sel in selection:
                allChilds = cmds.listRelatives(sel, allDescendents = True, f = True)
                for c in allChilds:
                    cmds.select(c, add = True)

            cmds.AbcExport(j = "-f %s -sl -u GuerillaTags -uv -ws -wuvs"%publishPath)

            # Reset selection
            cmds.select(clear = True)
            for sel in selection:
                cmds.select(sel, add = True)

        if self.mainWidget.assetFbxCheckBox.isChecked():
            self.finder.update_template("Files", "assetFbx")
            publishName = self.finder.generate_result().result
            publishPath = Asset.getPublishFilepath(publishName, "assetFbx")
            mel.eval('FBXExport -f "%s" -s'%(publishPath.replace("\\", "/")))

        if self.mainWidget.shotFbxCheckBox.isChecked():
            self.finder.update_template("Files", "animFbx")
            publishName = self.finder.generate_result().result
            publishPath = Shot.getPublishFilepath(publishName, "animFbx")
            mel.eval('FBXExport -f "%s" -s'%(publishPath.replace("\\", "/")))

        if self.mainWidget.shotAlembicCheckBox.isChecked():
            self.finder.update_template("Files", "animAlembic")
            publishName = self.finder.generate_result().result
            publishPath = Shot.getPublishFilepath(publishName, "animAlembic")
            startFrame = cmds.playbackOptions(query = True, animationStartTime = True)
            endFrame = cmds.playbackOptions(query = True, animationEndTime = True)

            for sel in selection:
                allChilds = cmds.listRelatives(sel, allDescendents = True, f = True)
                for c in allChilds:
                    cmds.select(c, add = True)

            cmds.AbcExport(j = "-f %s -sl -u GuerillaTags -uv -ws -wuvs -fr %s %s"%(publishPath, startFrame, endFrame))

            # Reset selection
            cmds.select(clear = True)
            for sel in selection:
                cmds.select(sel, add = True)

        # Open the published folder
        if self.context == "Asset":
            self.finder.update_template("Asset", "publishs")
            self.finder.generate_result()
            os.startfile(self.finder.result)
        elif self.context == "Shot":
            self.finder.update_template("Shot", "publishs")
            self.finder.generate_result()
            os.startfile(self.finder.result)
            
        mel.eval('print "> PRINS : Successfully published.\\n"')
        self.hide()
        self.destroy()


def openWindow():
    if QtWidgets.QApplication.instance():
        for win in (QtWidgets.QApplication.allWindows()):
            if 'FileOpenWindow' in win.objectName(): 
                win.destroy()

    ptr = OpenMayaUI.MQtUtil.mainWindow()
    mayaMainWindow = wrapInstance(int(ptr), QtWidgets.QWidget)
    
    PublisherWindow.window = PublisherWindow(parent = mayaMainWindow)
    PublisherWindow.window.show()

openWindow()