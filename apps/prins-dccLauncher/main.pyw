from PySide2                    import QtCore
from PySide2                    import QtGui
from PySide2                    import QtWidgets

from gui.Widgets                import pAppButton
from gui.Widgets                import DCCLauncherWidget
from gui.Graphics               import Icons
from gui.Graphics               import Style
from core.Datas                 import AppsDatas


class DCCLauncherWindow (QtWidgets.QMainWindow):

    instance = None

    def __init__(self):
        super().__init__()

        # Setup the window
        self.mainWidget = DCCLauncherWidget()
        self.launcherInfo = QtWidgets.QStatusBar()
        self.setCentralWidget(self.mainWidget)
        self.resize(270, 310)
        self.setMinimumSize(200, 200)
        self.setMaximumSize(540, 620)
        self.setWindowTitle("DCC Launcher")
        self.setWindowIcon(QtGui.QIcon(Icons.mainIcon()))
        self.setStyleSheet(Style.getStyleSheet())
        self.setStatusBar(self.launcherInfo)

        # Populate the project combo box
        projects = AppsDatas.getProjectList()
        self.mainWidget.projectComboBox.addItem("")
        self.mainWidget.projectComboBox.addItems(projects)

        # Connect the event of changing the project
        self.mainWidget.projectComboBox.currentTextChanged.connect(self.updateAppList)

    def updateAppList(self):

        self.mainWidget.clearAppList()

        # Get the current project and apps to display
        projectName = self.mainWidget.projectComboBox.currentText()
        datas = AppsDatas.getAppsDataForThisProject(projectName)

        # Create a button for each app
        for d in datas:
            newBtn = pAppButton(d, self)
            self.mainWidget.appListLayout.insertWidget(0, newBtn)
            newBtn.clicked.connect(newBtn.openApp)

        if not projectName:
            self.launcherInfo.clearMessage()
        else:
            self.launcherInfo.showMessage("Note : DCCs updated for %s"%(projectName))
        

# Show the window
if __name__ == "__main__":

    import sys
    qApp = QtWidgets.QApplication(sys.argv)

    # Make this window a singleton
    if not DCCLauncherWindow.instance:
        DCCLauncherWindow.instance = DCCLauncherWindow()
        DCCLauncherWindow.instance.show()

    sys.exit(qApp.exec_())