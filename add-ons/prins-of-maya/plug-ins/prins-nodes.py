from maya       import cmds
from maya       import mel
from maya.api   import OpenMaya

from nodes.utils  import getPrinsNodes

import os
import sys

#Tell maya we are using api 2.0
maya_useNewAPI = True

nodes = getPrinsNodes()

def initializePlugin(plugin):
    fn_plugin = OpenMaya.MFnPlugin(
        plugin,
        "Prins Maya add-on - Nodes",
        "0.1.0",
        "Any")

    for node in nodes:
        try:
            fn_plugin.registerNode(
                nodes[node].type_name,
                OpenMaya.MTypeId(node),
                nodes[node].creator,
                nodes[node].initialize,
                OpenMaya.MPxNode.kDependNode
            )
        except:
            Exception("Failed to register node : %s"%node)


def uninitializePlugin(plugin):
    fn_plugin = OpenMaya.MFnPlugin(plugin)

    for node in nodes:
        try:
            if nodes[node].callback_ids:
                for id in nodes[node].callback_ids:
                    OpenMaya.MMessage.removeCallback(id)
            fn_plugin.deregisterNode(
                OpenMaya.MTypeId(node)
            )
        except:
            Exception("Failed to deregister node : %s"%node)