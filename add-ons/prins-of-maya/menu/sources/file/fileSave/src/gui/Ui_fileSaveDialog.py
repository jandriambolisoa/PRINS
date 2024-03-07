# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'fileSaveDialog.ui'
##
## Created by: Qt User Interface Compiler version 5.15.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide2.QtCore import *
from PySide2.QtGui import *
from PySide2.QtWidgets import *


class Ui_fileSaveDialogWidget(object):
    def setupUi(self, fileSaveDialogWidget):
        if not fileSaveDialogWidget.objectName():
            fileSaveDialogWidget.setObjectName(u"fileSaveDialogWidget")
        fileSaveDialogWidget.resize(389, 296)
        self.verticalLayout_2 = QVBoxLayout(fileSaveDialogWidget)
        self.verticalLayout_2.setObjectName(u"verticalLayout_2")
        self.datasContainer = QVBoxLayout()
        self.datasContainer.setObjectName(u"datasContainer")
        self.datasLayout = QHBoxLayout()
        self.datasLayout.setObjectName(u"datasLayout")
        self.showLabel = QLabel(fileSaveDialogWidget)
        self.showLabel.setObjectName(u"showLabel")

        self.datasLayout.addWidget(self.showLabel)

        self.showComboBox = QComboBox(fileSaveDialogWidget)
        self.showComboBox.setObjectName(u"showComboBox")

        self.datasLayout.addWidget(self.showComboBox)

        self.horizontalSpacer = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.datasLayout.addItem(self.horizontalSpacer)

        self.typeLabel = QLabel(fileSaveDialogWidget)
        self.typeLabel.setObjectName(u"typeLabel")

        self.datasLayout.addWidget(self.typeLabel)

        self.typeComboBox = QComboBox(fileSaveDialogWidget)
        self.typeComboBox.setObjectName(u"typeComboBox")

        self.datasLayout.addWidget(self.typeComboBox)

        self.horizontalSpacer_2 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.datasLayout.addItem(self.horizontalSpacer_2)

        self.taskLabel = QLabel(fileSaveDialogWidget)
        self.taskLabel.setObjectName(u"taskLabel")

        self.datasLayout.addWidget(self.taskLabel)

        self.taskComboBox = QComboBox(fileSaveDialogWidget)
        self.taskComboBox.setObjectName(u"taskComboBox")

        self.datasLayout.addWidget(self.taskComboBox)


        self.datasContainer.addLayout(self.datasLayout)


        self.verticalLayout_2.addLayout(self.datasContainer)

        self.savesFormatListWidget = QListWidget(fileSaveDialogWidget)
        self.savesFormatListWidget.setObjectName(u"savesFormatListWidget")

        self.verticalLayout_2.addWidget(self.savesFormatListWidget)

        self.btnContainer = QHBoxLayout()
        self.btnContainer.setObjectName(u"btnContainer")
        self.horizontalSpacer_3 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.btnContainer.addItem(self.horizontalSpacer_3)

        self.saveBtn = QPushButton(fileSaveDialogWidget)
        self.saveBtn.setObjectName(u"saveBtn")

        self.btnContainer.addWidget(self.saveBtn)


        self.verticalLayout_2.addLayout(self.btnContainer)


        self.retranslateUi(fileSaveDialogWidget)

        QMetaObject.connectSlotsByName(fileSaveDialogWidget)
    # setupUi

    def retranslateUi(self, fileSaveDialogWidget):
        fileSaveDialogWidget.setWindowTitle(QCoreApplication.translate("fileSaveDialogWidget", u"Form", None))
        self.showLabel.setText(QCoreApplication.translate("fileSaveDialogWidget", u"Show", None))
        self.typeLabel.setText(QCoreApplication.translate("fileSaveDialogWidget", u"Type", None))
        self.taskLabel.setText(QCoreApplication.translate("fileSaveDialogWidget", u"Task", None))
        self.saveBtn.setText(QCoreApplication.translate("fileSaveDialogWidget", u"Save", None))
    # retranslateUi

