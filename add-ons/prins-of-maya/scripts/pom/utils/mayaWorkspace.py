import os
import shutil

def createMayaWorkspace(targetPath):
    """Create a Maya workspace and returns the result filepath

    :param targetPath: The target path to create the workspace
    :type targetPath: str
    :return: The created workspace filepath or false if it already exists
    :rtype: str or boolean
    """
    # Get the default workspace filepath
    filepath, filename = os.path.split(os.path.normpath(__file__))
    workspaceFilepath = os.path.join(filepath, "prinsWorkspace.mel")

    try:
        os.makedirs(targetPath)
    except:
        pass

    # Create a copy to the target path
    targetFilepath = os.path.join(os.path.normpath(targetPath), "workspace.mel")

    if os.path.isfile(targetFilepath):
        return False
    else:
        shutil.copyfile(workspaceFilepath, targetFilepath)
        return targetFilepath
