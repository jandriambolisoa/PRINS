# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'pomPublisher.ui'
##
## Created by: Qt User Interface Compiler version 5.15.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide2.QtCore import *
from PySide2.QtGui import *
from PySide2.QtWidgets import *


class Ui_pomPublisherWidget(object):
    def setupUi(self, pomPublisherWidget):
        if not pomPublisherWidget.objectName():
            pomPublisherWidget.setObjectName(u"pomPublisherWidget")
        pomPublisherWidget.resize(361, 200)
        self.verticalLayout = QVBoxLayout(pomPublisherWidget)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.mayaAssetContainer = QHBoxLayout()
        self.mayaAssetContainer.setObjectName(u"mayaAssetContainer")
        self.mayaAssetCheckBox = QCheckBox(pomPublisherWidget)
        self.mayaAssetCheckBox.setObjectName(u"mayaAssetCheckBox")

        self.mayaAssetContainer.addWidget(self.mayaAssetCheckBox)

        self.horizontalSpacer = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.mayaAssetContainer.addItem(self.horizontalSpacer)

        self.mayaAssetLabel = QLabel(pomPublisherWidget)
        self.mayaAssetLabel.setObjectName(u"mayaAssetLabel")

        self.mayaAssetContainer.addWidget(self.mayaAssetLabel)

        self.horizontalSpacer_2 = QSpacerItem(40, 20, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.mayaAssetContainer.addItem(self.horizontalSpacer_2)


        self.verticalLayout.addLayout(self.mayaAssetContainer)

        self.assetAlembicContainer = QHBoxLayout()
        self.assetAlembicContainer.setObjectName(u"assetAlembicContainer")
        self.assetAlembicCheckBox = QCheckBox(pomPublisherWidget)
        self.assetAlembicCheckBox.setObjectName(u"assetAlembicCheckBox")

        self.assetAlembicContainer.addWidget(self.assetAlembicCheckBox)

        self.horizontalSpacer_3 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.assetAlembicContainer.addItem(self.horizontalSpacer_3)

        self.assetAlembicLabel = QLabel(pomPublisherWidget)
        self.assetAlembicLabel.setObjectName(u"assetAlembicLabel")

        self.assetAlembicContainer.addWidget(self.assetAlembicLabel)

        self.horizontalSpacer_10 = QSpacerItem(40, 20, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.assetAlembicContainer.addItem(self.horizontalSpacer_10)


        self.verticalLayout.addLayout(self.assetAlembicContainer)

        self.assetFbxContainer = QHBoxLayout()
        self.assetFbxContainer.setObjectName(u"assetFbxContainer")
        self.assetFbxCheckBox = QCheckBox(pomPublisherWidget)
        self.assetFbxCheckBox.setObjectName(u"assetFbxCheckBox")

        self.assetFbxContainer.addWidget(self.assetFbxCheckBox)

        self.horizontalSpacer_4 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.assetFbxContainer.addItem(self.horizontalSpacer_4)

        self.assetFbxLabel = QLabel(pomPublisherWidget)
        self.assetFbxLabel.setObjectName(u"assetFbxLabel")

        self.assetFbxContainer.addWidget(self.assetFbxLabel)

        self.horizontalSpacer_9 = QSpacerItem(40, 20, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.assetFbxContainer.addItem(self.horizontalSpacer_9)


        self.verticalLayout.addLayout(self.assetFbxContainer)

        self.line = QFrame(pomPublisherWidget)
        self.line.setObjectName(u"line")
        self.line.setFrameShadow(QFrame.Sunken)
        self.line.setLineWidth(2)
        self.line.setFrameShape(QFrame.HLine)

        self.verticalLayout.addWidget(self.line)

        self.shotFbxContainer = QHBoxLayout()
        self.shotFbxContainer.setObjectName(u"shotFbxContainer")
        self.shotFbxCheckBox = QCheckBox(pomPublisherWidget)
        self.shotFbxCheckBox.setObjectName(u"shotFbxCheckBox")

        self.shotFbxContainer.addWidget(self.shotFbxCheckBox)

        self.horizontalSpacer_5 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.shotFbxContainer.addItem(self.horizontalSpacer_5)

        self.shotFbxLabel = QLabel(pomPublisherWidget)
        self.shotFbxLabel.setObjectName(u"shotFbxLabel")

        self.shotFbxContainer.addWidget(self.shotFbxLabel)

        self.horizontalSpacer_8 = QSpacerItem(40, 20, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.shotFbxContainer.addItem(self.horizontalSpacer_8)


        self.verticalLayout.addLayout(self.shotFbxContainer)

        self.shotAlembicContainer = QHBoxLayout()
        self.shotAlembicContainer.setObjectName(u"shotAlembicContainer")
        self.shotAlembicCheckBox = QCheckBox(pomPublisherWidget)
        self.shotAlembicCheckBox.setObjectName(u"shotAlembicCheckBox")

        self.shotAlembicContainer.addWidget(self.shotAlembicCheckBox)

        self.horizontalSpacer_7 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.shotAlembicContainer.addItem(self.horizontalSpacer_7)

        self.shotAlembicLabel = QLabel(pomPublisherWidget)
        self.shotAlembicLabel.setObjectName(u"shotAlembicLabel")

        self.shotAlembicContainer.addWidget(self.shotAlembicLabel)

        self.horizontalSpacer_6 = QSpacerItem(40, 20, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.shotAlembicContainer.addItem(self.horizontalSpacer_6)


        self.verticalLayout.addLayout(self.shotAlembicContainer)

        self.line_2 = QFrame(pomPublisherWidget)
        self.line_2.setObjectName(u"line_2")
        self.line_2.setLineWidth(2)
        self.line_2.setFrameShape(QFrame.HLine)
        self.line_2.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line_2)

        self.publishBtn = QPushButton(pomPublisherWidget)
        self.publishBtn.setObjectName(u"publishBtn")

        self.verticalLayout.addWidget(self.publishBtn)


        self.retranslateUi(pomPublisherWidget)

        QMetaObject.connectSlotsByName(pomPublisherWidget)
    # setupUi

    def retranslateUi(self, pomPublisherWidget):
        pomPublisherWidget.setWindowTitle(QCoreApplication.translate("pomPublisherWidget", u"Form", None))
        self.mayaAssetCheckBox.setText(QCoreApplication.translate("pomPublisherWidget", u"Maya ASCII", None))
        self.mayaAssetLabel.setText(QCoreApplication.translate("pomPublisherWidget", u".ma", None))
        self.assetAlembicCheckBox.setText(QCoreApplication.translate("pomPublisherWidget", u"Alembic", None))
        self.assetAlembicLabel.setText(QCoreApplication.translate("pomPublisherWidget", u".abc", None))
        self.assetFbxCheckBox.setText(QCoreApplication.translate("pomPublisherWidget", u"FBX", None))
        self.assetFbxLabel.setText(QCoreApplication.translate("pomPublisherWidget", u".fbx", None))
        self.shotFbxCheckBox.setText(QCoreApplication.translate("pomPublisherWidget", u"Shot FBX", None))
        self.shotFbxLabel.setText(QCoreApplication.translate("pomPublisherWidget", u".fbx", None))
        self.shotAlembicCheckBox.setText(QCoreApplication.translate("pomPublisherWidget", u"Shot Alembic", None))
        self.shotAlembicLabel.setText(QCoreApplication.translate("pomPublisherWidget", u".abc", None))
        self.publishBtn.setText(QCoreApplication.translate("pomPublisherWidget", u"Publish selection", None))
    # retranslateUi

