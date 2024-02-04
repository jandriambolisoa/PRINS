from PySide2                    import QtCore
from PySide2                    import QtGui
from PySide2                    import QtWidgets

from .Graphics                  import Icons
from .Graphics                  import Style
from .ui_dccLauncherWidget      import Ui_dccLauncherWidget

import subprocess
import os

class pAppButton(QtWidgets.QPushButton):
    """The push button widget to open an app
    """
    def __init__(self, data, parent):
        super().__init__()

        self.appPath =      None
        self.envs =         os.environ.copy()
        self.dccName =      None
        self.ultParent =    parent

        # Setup button's look
        self.setSizePolicy(
            QtWidgets.QSizePolicy.Minimum,
            QtWidgets.QSizePolicy.Fixed
        )

        self.setMinimumHeight(Style.appButtonHeight)

        self.setStyleSheet(
            Style.getBtnStyleSheet()
        )

        self.setCursor(
            QtGui.QCursor(QtCore.Qt.PointingHandCursor)
        )

        # Read given data
        envData = None
        appData = None
        if data and "app" in data:
            appData = data["app"]
        if data and "envs" in data:
            envData = data["envs"]

        # Apply data
        if appData:
            self.dccName = appData["name"]
            self.appPath = appData["path"]

            # Check if a comment exists
            if "comment" in appData:
                self.setText("  %s\n  Version : %s\n  %s"%(
                    self.dccName,appData["version"],appData["comment"]
                    ))
            else:
                self.setText("  %s\n  Version : %s"%(
                    self.dccName,appData["version"]
                    ))
            
            # Find the icon
            iconPath = Icons.getIconFromName(self.dccName)
            if iconPath:
                self.setIcon(
                    QtGui.QIcon(iconPath)
                )
                self.setIconSize(
                    QtCore.QSize(35, 35)
                )
            else:
                self.setIcon(
                    QtGui.QIcon(Icons.defaultIcon())
                )
                self.setIconSize(
                    QtCore.QSize(35, 35)
                )

        if envData:
            for env in envData:
                if env in self.envs:
                    self.envs[env] = "%s;%s"%(self.envs[env], envData[env])
                else:
                    self.envs[env] = "%s"%(envData[env])


    def openApp(self):
        if self.appPath:
            subprocess.Popen(self.appPath,
                             stdout = subprocess.PIPE,
                             stderr = subprocess.PIPE,
                             text = True,
                             env = self.envs)
            
            self.ultParent.launcherInfo.showMessage("LAUNCHED : %s"%self.dccName)
        else:
            self.ultParent.launcherInfo.showMessage("WARNING : Could not launch the selected DCC.")
            

class DCCLauncherWidget(Ui_dccLauncherWidget, QtWidgets.QWidget):
    """The main widget for the dcc Launcher
    """
    def __init__(self):
        super().__init__()
        self.setupUi(self)

    def clearAppList(self):
        itemCount = self.appListLayout.count()
        if itemCount > 1:
            for i in range(itemCount - 1):
                toDel = self.appListLayout.itemAt(0)
                toDel.widget().hide()
                self.appListLayout.removeItem(toDel)
                

        