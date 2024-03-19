from prins.explorer     import PathFinder

from maya import cmds
from maya import mel

import os

# Get the filepath
scenePath = cmds.file(query = True, sn = True)
sceneFolder, sceneName = os.path.split(scenePath)

# Is it an Asset or a Shot path ?
Asset = True
pathFolders = os.path.normpath(scenePath).split("\\")
if not "Assets" in pathFolders:
    Asset = False

if scenePath and Asset:
    #try:
    finder = PathFinder()
    finder.update_template("Files", "mayaAsset")
    finder.update_datasFromFilename(sceneName, "mayaAsset")
    finder.generate_result()

    while os.path.isfile(os.path.join(sceneFolder, finder.result)):
        finder.increment_version().generate_result()

    cmds.file(rename = finder.result)
    cmds.file(save = True, type = "mayaAscii")
    #except:
    #    raise Exception("An error occured while saving your scene.")

elif scenePath and not Asset:
    try:
        finder = PathFinder()
        finder.update_template("Files", "mayaShot")
        finder.update_datasFromFilename(sceneName, "mayaShot")
        finder.increment_save().generate_result()

        cmds.file(rename = finder.result)
        cmds.file(save = True, type = "mayaAscii")
    except:
        raise Exception("An error occured while saving your scene.")
    
else:
    raise Exception("An error occured. It looks like your save file is incorrect.")

mel.eval('print "> PRINS Successfully saved your file.\\n" ')