"""
v004 - note : updated 'ls' and 'listRelatives' commands to avoid errors if objects have the same name
added a 'Quick Tag' button
used strip() method to avoid unwanted spaces in tags name
"""

from maya import cmds

#main window class
class gTagsWindow:
    
    def __init__(self):
        
        #window variables
        self.interface = "gTagsInterface"
        self.size = (300, 420)
        self.title = "Guerilla Tags manager - v004"
        SEPARATORHEIGHT = 20

        #remove already opened window
        if cmds.window(self.interface, exists = True):
            cmds.deleteUI(self.interface);

        #create window
        gTagsInterface = cmds.window(self.interface, t=self.title, mnb=True, mxb=False, wh=self.size, s=False);

        #main window layout
        cmds.columnLayout("mainLayout", adjustableColumn=True )

        #top of window label
        cmds.separator(h = SEPARATORHEIGHT)
        cmds.text(label = "Select a tag to see associated meshes")
        cmds.text(label = "or select a mesh to manage it")
        cmds.separator(h = SEPARATORHEIGHT)

        #split the window
        cmds.paneLayout("verticalSplitLayout", configuration="vertical2", separatorThickness = 1)
        
        #left part layout
        cmds.columnLayout("tagsLayout", adjustableColumn=2, parent="verticalSplitLayout")
        cmds.text(label = "Existing Tags")
        cmds.textScrollList("gTagsListUI", allowMultiSelection = False, h=230, w=1, selectCommand = self.updateTaggedMesh, doubleClickCommand = self.selectAllTaggedMeshesUI)
        self.updateExistingTags()

        #right part layout
        cmds.columnLayout("meshesLayout", adjustableColumn=True, parent="verticalSplitLayout")
        cmds.text(label = "Tagged Meshes")
        cmds.textScrollList("meshesListUI", allowMultiSelection = True, h=230, w=1, doubleClickCommand = self.selectMeshFromUI)
        
        #bottom of window
        #buttons layout
        cmds.button("gTagsCreateButton", label="Create Tags", c=self.createTags, p = "mainLayout")
        cmds.rowLayout("buttonsLayout", p = "mainLayout", numberOfColumns = 3, w=self.size[0])
        cmds.button("gTagsAddButton", label="Quick Tag", w=self.size[0]/2, command = self.addButton)
        cmds.button("gTagsRemoveButton", label="Remove selection", w=self.size[0]/2, command = self.removeButton)
        cmds.separator(p = "mainLayout", h = SEPARATORHEIGHT)
        cmds.button("gTagsFindButton", p = "mainLayout", label="Find untagged meshes", w=self.size[0], c=self.selectUntagged)

        #show window
        cmds.showWindow(gTagsInterface);
    
    #scan untagged meshes method, return untagged mesh list
    def scanUntagged(self):
        
        #create lists
        allMeshes = []
        untagged = []
        
        #get all meshes in scenes
        for mesh in cmds.ls(type="mesh", long = True):
            
            #get transforms
            allMeshes.append(cmds.listRelatives(mesh, parent=True, f=True)[0])
        
        #sorting 
        for node in allMeshes:
            
            #find untagged mesh
            if (not cmds.listAttr(node, st="GuerillaTags")):
                
                untagged.append(node)
                
        return untagged

    #scan existing guerilla Tags method, return a list of existing tags
    def scanTags(self):
        
        #create lists
        allMeshes = []
        tagsList = []
        
        #get all meshes in scenes
        for mesh in cmds.ls(type="mesh", long = True):
            
            #get transforms
            allMeshes.append(cmds.listRelatives(mesh, parent=True, f=True)[0])
        
        #sorting 
        for node in allMeshes:
                
            if cmds.listAttr(node, st="GuerillaTags"):
            
                #get tags from existing GuerillaTags attribute
                meshTags = cmds.getAttr("%s.GuerillaTags"%node)
                if meshTags == None:
                    meshTags = ""
                for tag in meshTags.split(","):
                    tagsList.append(tag)

        #remove duplicates from list
        tagsList = list(dict.fromkeys(tagsList))
        #sort list
        tagsList.sort()
        
        return tagsList
    
    #scan Guerilla Tags of mesh, return a tags list or a string   
    def scanMeshTags(self, mesh, type):
        
        if cmds.listAttr(mesh, st="GuerillaTags"):
            
            meshTags = cmds.getAttr("%s.GuerillaTags"%mesh)
            #read 'type' argument to adapt the return
            if type != "string":
                if (not meshTags):
                    meshtags = []
                else:
                    meshTags = meshTags.split(",")
                    
            return meshTags
    
        else:
            if type == "string":
                return ""
            else:
                meshTags = []
                return meshTags
                
    #list meshes from tag selection method, return a mesh list
    def scanTagMeshes(self):
        
        selTag = cmds.textScrollList("gTagsListUI", query=True, selectItem=True)
        allMeshes = []
        tagMeshes = []
        nodeTags = []
        
        #confirm that a tag is selected
        if selTag:
            #get all scene meshes
            for mesh in cmds.ls(type="mesh", long = True):
                #exception to not count 'Orig' or polySurfaceShape meshes due to skinCluster or other nodes
                #in order to avoid multiples allMeshes.append of the same transform
                if not "Orig" in mesh and not "polySurfaceShape" in mesh:
                    #get transforms
                    allMeshes.append(cmds.listRelatives(mesh, parent=True, f=True)[0])
                
            for node in allMeshes:
                
                nodeTags = self.scanMeshTags(node, "list")
                if nodeTags:
                    #find selected tag in list
                    if selTag[0] in nodeTags:
                        tagMeshes.append(node)
                               
            return tagMeshes
                
    #remove tag from selected mesh method
    def removeTags(self,selTag,selNodes):
        
        for node in selNodes:
            
            #scan mesh tags
            meshTags = self.scanMeshTags(node, "list")
            #find specific tag in tags list
            if selTag in meshTags:
                #find tag index
                i = meshTags.index(selTag)
                #remove tag from list
                del meshTags[i]
                #reconvert list into string
                newTags = ",".join(meshTags)
                #update attribute
                cmds.setAttr(("%s.GuerillaTags"%node), newTags, type="string")
                
            if self.scanMeshTags(node, "string") == "":
                cmds.deleteAttr("%s.GuerillaTags"%node)
                
    #update existing tags UI
    def updateExistingTags(self):
        
        #clean UI list
        cmds.textScrollList("gTagsListUI", edit=True, removeAll=True)
        #list all tags
        allTags = self.scanTags()
        allTags.sort()
        #append tags in UI list
        for tag in allTags:
            cmds.textScrollList("gTagsListUI", edit=True, append=tag)
            
    #update tagged meshes UI
    def updateTaggedMesh(self):
        
        #clean UI list
        cmds.textScrollList("meshesListUI", edit=True, removeAll=True)
        #list all meshes
        allMeshes = self.scanTagMeshes()
        allMeshes.sort()
        #append tags in UI list
        for mesh in allMeshes:
            cmds.textScrollList("meshesListUI", edit=True, append=mesh)
    
    #select all items in Tagged Meshes UI method     
    def selectAllTaggedMeshesUI(self):
        
        tagged = cmds.textScrollList("meshesListUI", query=True, allItems=True)
        cmds.textScrollList("meshesListUI", edit=True, selectItem = tagged)
        
    #select mesh in Maya from UI method
    def selectMeshFromUI(self):
        
        activeSelUI = cmds.textScrollList("meshesListUI", query=True, selectItem=True)
        cmds.select(activeSelUI, replace = True)
        
    #button command = select untagged meshes
    def selectUntagged(self, _ignore):
        
        #delete 'GuerillaTags' attribute if it's empty
        allMeshes = []
        for mesh in cmds.ls(type="mesh", long = True):
            allMeshes.append(cmds.listRelatives(mesh, parent=True, f=True)[0])
         
        for node in allMeshes:
            if cmds.listAttr(node, st="GuerillaTags"):
                if (not self.scanMeshTags(node, "string")):
                    cmds.deleteAttr("%s.GuerillaTags"%node)
        
        #select nodes without 'GuerillaTags' attribute
        cmds.select(self.scanUntagged(), replace = True)
        
    #button command = create Guerilla Tags, open the secondary window to create/add tags
    def createTags(self, _ignore):
        
        createUI = createTagsWindow()
    
    #button command = remove selection from meshes list and update gTags attributes
    def removeButton(self, _ignore):
        
        #get arguments for removeTags method
        tag = cmds.textScrollList("gTagsListUI", query=True, selectItem=True)
        tag = tag[0]
        meshes = cmds.textScrollList("meshesListUI", query=True, selectItem=True)
        self.removeTags(tag,meshes)
        self.updateTaggedMesh()
        self.updateExistingTags()

    def addButton(self, _ignore):
        
        selTag = cmds.textScrollList("gTagsListUI", query = True, selectItem = True)

        createTagsWindow.createOrAddTags(_ignore, selTag)
        
        self.updateTaggedMesh()


#secondary 'create' window class
class createTagsWindow:

    def __init__(self):
        
        #window variables
        self.interface = "createTagsInterface"
        self.size = (170, 310)
        self.title = "Create Tags"
        SEPARATORHEIGHT = 20

        #remove already opened window
        if cmds.window(self.interface, exists = True):
            cmds.deleteUI(self.interface);
            
        #create 'create Tags' window
        createTagsInterface = cmds.window(self.interface, t=self.title, mnb=False, mxb=False, wh=self.size, s=True);
        
        #main window layout
        cmds.columnLayout("mainLayout", adjustableColumn=True)
        
        cmds.separator(p = "mainLayout", h = SEPARATORHEIGHT)
        cmds.text("createUIHelp", label = "Press Enter to add \nnew tags to selected meshes")
        cmds.separator(p = "mainLayout", h = SEPARATORHEIGHT)
        cmds.textScrollList("addTagsListUI", allowMultiSelection = True, w=1, selectCommand = self.selectItem)
        cmds.separator(p = "mainLayout", h = SEPARATORHEIGHT)
        cmds.textField("inputCreateTags", height = 30, ec=self.enterCommand, aie = True)
        
        self.existingTagsUI()
        
        #show window
        cmds.showWindow(createTagsInterface);
    
    #add selected item in text field
    def selectItem(self):
        
        #remove all items from text field
        allItems = cmds.textScrollList("addTagsListUI", query=True, allItems=True)
        
        for item in allItems:
            #remove item from text field to make sure unselected are not in text field
            oldText = cmds.textField("inputCreateTags", query=True, text = True)
            newText = oldText.split(",")
            if item in newText:
                i = newText.index(item)
                del newText[i]
            newText = ",".join(newText)
            #update text field
            cmds.textField("inputCreateTags", edit=True, text = newText)
            
        
        #list selected items
        itemSel = cmds.textScrollList("addTagsListUI", query=True, selectItem=True)
        
        #add selected item in text field
        for tag in itemSel:
            oldTags = cmds.textField("inputCreateTags", query=True, text = True)
            if oldTags == "":
                newTags = tag
            else:
                newTags = f"{oldTags},{tag}"
            cmds.textField("inputCreateTags", edit=True, text = newTags)
            
        #remove duplicates
        newTags = cmds.textField("inputCreateTags", query=True, text = True)
        newTags = newTags.split(",")
        newTags = list(dict.fromkeys(newTags))
        newTags = ",".join(newTags)
        #update text field
        cmds.textField("inputCreateTags", edit=True, text = newTags)
        
    
    #list existing gTags in UI
    def existingTagsUI(self):
        
        cmds.textScrollList("addTagsListUI", edit = True, removeAll = True)
        allTags = gTagsWindow.scanTags("_ignore")
        for tag in allTags:
            cmds.textScrollList("addTagsListUI", edit = True, append = tag)
        
    #create or add Guerilla Tags
    def createOrAddTags(self, userInput):
        
        #get selection
        for node in cmds.ls(sl=True, type = "transform", long = True):
            
            #check if "Guerilla Tags" attribute exist
            if (not cmds.listAttr(node, st="GuerillaTags")):
                #create attribute
                cmds.addAttr(longName="GuerillaTags",dataType="string")
                oldTags = []
                
            else:
                #convert old tags into list
                oldTags = cmds.getAttr("%s.GuerillaTags"%node)
                if not oldTags:
                    oldTags = []
                else:    
                    oldTags = oldTags.split(",")
                
            #convert user input into list
            if len(userInput)>1:
                userInput = userInput.split(",")
            else:
                userInput = list(userInput)
            #add user input into tags
            for tag in userInput:
                oldTags.append(tag)
            #remove duplicates from list
            newTags = list(dict.fromkeys(oldTags))
            #reconvert list into string
            newTags = ",".join(newTags)
            #reconvert userInput into string
            userInput = ",".join(userInput)
            #update attribute
            cmds.setAttr(("%s.GuerillaTags"%node), newTags, type="string")
            
    #enter command = get user input to create or add tag
    def enterCommand(self,_ignore):
        
        textInput = cmds.textField("inputCreateTags", query=True, text = True)
        textInput = textInput.strip()
        self.createOrAddTags(textInput)
        #reset text field and hide window
        cmds.textField("inputCreateTags", edit=True, text = "")
        cmds.window(self.interface, edit=True, visible=False)
        #update existing tags list on main window
        gTagsWindow().updateExistingTags
        
gTagsManager = gTagsWindow()