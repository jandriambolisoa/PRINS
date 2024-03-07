from    maya        import utils
from    sources     import loader

def main():
    """
    Execute actions to setup Maya.
    """
    menu()

def menu():
    """Create menu
    """
    menuLoader = loader.MenuLoader("PRINS")
    menuLoader.createMenu()
    menuLoader.loadScript()

# Execute the main function after the loading of the ui.
utils.executeDeferred( main )