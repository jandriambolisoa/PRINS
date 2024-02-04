# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'dccLauncherWidget.ui'
##
## Created by: Qt User Interface Compiler version 5.15.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide2.QtCore import *
from PySide2.QtGui import *
from PySide2.QtWidgets import *


class Ui_dccLauncherWidget(object):
    def setupUi(self, dccLauncherWidget):
        if not dccLauncherWidget.objectName():
            dccLauncherWidget.setObjectName(u"dccLauncherWidget")
        dccLauncherWidget.resize(312, 343)
        dccLauncherWidget.setStyleSheet(u"")
        self.verticalLayout = QVBoxLayout(dccLauncherWidget)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.verticalLayout.setContentsMargins(0, 6, 0, 6)
        self.envLayout = QHBoxLayout()
        self.envLayout.setObjectName(u"envLayout")
        self.horizontalSpacer = QSpacerItem(40, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.envLayout.addItem(self.horizontalSpacer)

        self.projectLabel = QLabel(dccLauncherWidget)
        self.projectLabel.setObjectName(u"projectLabel")

        self.envLayout.addWidget(self.projectLabel)

        self.projectComboBox = QComboBox(dccLauncherWidget)
        self.projectComboBox.setObjectName(u"projectComboBox")
        sizePolicy = QSizePolicy(QSizePolicy.MinimumExpanding, QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.projectComboBox.sizePolicy().hasHeightForWidth())
        self.projectComboBox.setSizePolicy(sizePolicy)

        self.envLayout.addWidget(self.projectComboBox)

        self.horizontalSpacer_2 = QSpacerItem(40, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.envLayout.addItem(self.horizontalSpacer_2)


        self.verticalLayout.addLayout(self.envLayout)

        self.mainLayout = QVBoxLayout()
        self.mainLayout.setObjectName(u"mainLayout")
        self.scrollArea = QScrollArea(dccLauncherWidget)
        self.scrollArea.setObjectName(u"scrollArea")
        self.scrollArea.setVerticalScrollBarPolicy(Qt.ScrollBarAlwaysOn)
        self.scrollArea.setWidgetResizable(True)
        self.scrollAreaWidgetContents = QWidget()
        self.scrollAreaWidgetContents.setObjectName(u"scrollAreaWidgetContents")
        self.scrollAreaWidgetContents.setGeometry(QRect(0, 0, 291, 297))
        self.verticalLayout_3 = QVBoxLayout(self.scrollAreaWidgetContents)
        self.verticalLayout_3.setObjectName(u"verticalLayout_3")
        self.appListLayout = QVBoxLayout()
        self.appListLayout.setObjectName(u"appListLayout")
        self.verticalSpacer = QSpacerItem(20, 40, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.appListLayout.addItem(self.verticalSpacer)


        self.verticalLayout_3.addLayout(self.appListLayout)

        self.scrollArea.setWidget(self.scrollAreaWidgetContents)

        self.mainLayout.addWidget(self.scrollArea)


        self.verticalLayout.addLayout(self.mainLayout)


        self.retranslateUi(dccLauncherWidget)

        QMetaObject.connectSlotsByName(dccLauncherWidget)
    # setupUi

    def retranslateUi(self, dccLauncherWidget):
        dccLauncherWidget.setWindowTitle(QCoreApplication.translate("dccLauncherWidget", u"Form", None))
        self.projectLabel.setText(QCoreApplication.translate("dccLauncherWidget", u"Project :", None))
    # retranslateUi

