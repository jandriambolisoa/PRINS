from maya.api   import OpenMaya

class POM_BaseNode(OpenMaya.MPxNode):

    def __init__(self):
        self.callback_ids = []
        super().__init__()

    @staticmethod
    def createFloatAttr(node, longName, shortName, type = 0, default = 0.0, min = None, max = None):
        """Create a float attribute for this node

        :param node: The node to add this attribute
        :type node: MPxNode
        :param longName: Long attribute name
        :type longName: string
        :param shortName: Short attribute name
        :type shortName: string
        :param type: Defines the attribute's type, 0:input, 1:output, defaults to 0
        :type type: int, optional
        :param default: The default attribute's value, defaults to 0.0
        :type default: float, optional
        :param min: The minimum value the user is allowed to set, defaults to None
        :type min: float, optional
        :param max: The maximum value the user is allowed to set, defaults to None
        :type max: float, optional
        :return: The created attribute
        :rtype: OpenMaya.MFnNumericAttribute
        """
        #Declare attribute's type to create
        numeric_attr = OpenMaya.MFnNumericAttribute()

        #Create the attribute
        attribute = numeric_attr.create(
            longName,
            shortName,
            OpenMaya.MFnNumericData.kFloat,
            default
        )
        if min != None:
            numeric_attr.setMin(min)
        if max != None:
            numeric_attr.setMax(max)

        if type == 0:
            numeric_attr.readable = False
            numeric_attr.writable = True
            numeric_attr.keyable = True
        elif type == 1:
            numeric_attr.readable = True
            numeric_attr.writable = False
            numeric_attr.keyable = False

        # Add the attribute to the node
        node.addAttribute(attribute)

        return attribute
    
    @staticmethod
    def createIntegerAttr(node, longName, shortName, type = 0, default = 0, min = None, max = None):
        """Create an integer attribute for this node

        :param node: The node to add this attribute
        :type node: MPxNode
        :param longName: Long attribute name
        :type longName: string
        :param shortName: Short attribute name
        :type shortName: string
        :param type: Defines the attribute's type, 0:input, 1:output, defaults to 0
        :type type: int, optional
        :param default: The default attribute's value, defaults to 0
        :type default: int, optional
        :param min: The minimum value the user is allowed to set, defaults to None
        :type min: int, optional
        :param max: The maximum value the user is allowed to set, defaults to None
        :type max: int, optional
        :return: The created attribute
        :rtype: OpenMaya.MFnNumericAttribute
        """
        #Declare attribute's type to create
        numeric_attr = OpenMaya.MFnNumericAttribute()

        #Create the attribute
        attribute = numeric_attr.create(
            longName,
            shortName,
            OpenMaya.MFnNumericData.kInt,
            default
        )
        if min != None:
            numeric_attr.setMin(min)
        if max != None:
            numeric_attr.setMax(max)

        if type == 0:
            numeric_attr.readable = False
            numeric_attr.writable = True
            numeric_attr.keyable = True
        elif type == 1:
            numeric_attr.readable = True
            numeric_attr.writable = False
            numeric_attr.keyable = False

        # Add the attribute to the node
        node.addAttribute(attribute)

        return attribute
    
    @staticmethod
    def createMatrixAttr(node, longName, shortName, type = 0):
        """Create a matrix attribute for this node

        :param node: The node to add this attribute
        :type node: MPxNode
        :param longName: Long attribute name
        :type longName: string
        :param shortName: Short attribute name
        :type shortName: string
        :param type: Defines the attribute's type, 0:input, 1:output, defaults to 0
        :type type: int, optional
        :return: The created attribute
        :rtype: OpenMaya.MFnMatrixAttribute
        """
        #Declare attribute's type to create
        matrix_attr = OpenMaya.MFnMatrixAttribute()

        #Create the attribute
        attribute = matrix_attr.create(
            longName,
            shortName,
            matrix_attr.kFloat
        )

        if type == 0:
            matrix_attr.readable = False
            matrix_attr.writable = True
            matrix_attr.keyable = True
        elif type == 1:
            matrix_attr.readable = True
            matrix_attr.writable = False
            matrix_attr.keyable = False
        else:
            raise ValueError("Argument 'type' must be 0 or 1.")

        # Add the attribute to the node
        node.addAttribute(attribute)

        return attribute
    
    @staticmethod
    def createStringAttr(node, longName, shortName, type = 0, default = ""):
        """Create a string attribute for this node

        :param node: The node to add this attribute
        :type node: MPxNode
        :param longName: Long attribute name
        :type longName: string
        :param shortName: Short attribute name
        :type shortName: string
        :param type: Defines the attribute's type, 0:input, 1:output, defaults to 0
        :type type: int, optional
        :param default: The default attribute's value, defaults to an empty string
        :type default: string, optional
        :return: The created attribute
        :rtype: OpenMaya.MFnTypedAttribute
        """
        #Declare attribute's type to create
        string_attr = OpenMaya.MFnTypedAttribute()
        defaultString_data = OpenMaya.MFnStringData().create(default)

        #Create the attribute
        attribute = string_attr.create(
            longName,
            shortName,
            OpenMaya.MFnData.kString,
            defaultString_data
        )

        if type == 0:
            string_attr.readable = False
            string_attr.writable = True
            string_attr.keyable = False
        elif type == 1:
            string_attr.readable = True
            string_attr.writable = False
            string_attr.keyable = False
        else:
            raise ValueError("Argument 'type' must be 0 or 1.")

        # Add the attribute to the node
        node.addAttribute(attribute)

        return attribute
    

    @staticmethod
    def createMeshAttr(node, longName, shortName, type = 0):
        """Create a string attribute for this node

        :param node: The node to add this attribute
        :type node: MPxNode
        :param longName: Long attribute name
        :type longName: string
        :param shortName: Short attribute name
        :type shortName: string
        :param type: Defines the attribute's type, 0:input, 1:output, defaults to 0
        :type type: int, optional
        :param default: The default attribute's value, defaults to an empty string
        :type default: string, optional
        :return: The created attribute
        :rtype: OpenMaya.MFnTypedAttribute
        """
        #Declare attribute's type to create
        mesh_attr = OpenMaya.MFnTypedAttribute()

        #Create the attribute
        attribute = mesh_attr.create(
            longName,
            shortName,
            OpenMaya.MFnData.kMesh
        )

        if type == 0:
            mesh_attr.readable = False
            mesh_attr.writable = True
            mesh_attr.keyable = False
        elif type == 1:
            mesh_attr.readable = True
            mesh_attr.writable = False
            mesh_attr.keyable = False
        else:
            raise ValueError("Argument 'type' must be 0 or 1.")

        # Add the attribute to the node
        node.addAttribute(attribute)

        return attribute

    @staticmethod
    def createVectorAttr(node, longName, shortName, type = 0):
        """Create a vector attribute for this node

        :param node: The node to add this attribute
        :type node: MPxNode
        :param longName: Long attribute name
        :type longName: string
        :param shortName: Short attribute name
        :type shortName: string
        :param type: Defines the attribute's type, 0:input, 1:output, defaults to 0
        :type type: int, optional
        :param default: The default attribute's value, defaults to an empty string
        :type default: string, optional
        :return: The created attribute
        :rtype: OpenMaya.MFnNumericAttribute
        """
        #Declare attribute's type to create
        vector_attr = OpenMaya.MFnNumericAttribute()

        #Create the attribute
        attribute = vector_attr.create(
            longName,
            shortName,
            OpenMaya.MFnNumericData.k3Float
        )

        if type == 0:
            vector_attr.readable = False
            vector_attr.writable = True
            vector_attr.keyable = True
        elif type == 1:
            vector_attr.readable = True
            vector_attr.writable = False
            vector_attr.keyable = False
        else:
            raise ValueError("Argument 'type' must be 0 or 1.")

        # Add the attribute to the node
        node.addAttribute(attribute)

        return attribute
    
    @staticmethod
    def createUVAttr(node, longName, shortName, type = 0):
        """Create a uv attribute for this node

        :param node: The node to add this attribute
        :type node: MPxNode
        :param longName: Long attribute name
        :type longName: string
        :param shortName: Short attribute name
        :type shortName: string
        :param type: Defines the attribute's type, 0:input, 1:output, defaults to 0
        :type type: int, optional
        :param default: The default attribute's value, defaults to an empty string
        :type default: string, optional
        :return: The created attribute
        :rtype: OpenMaya.MFnNumericAttribute
        """
        #Declare attribute's type to create
        uv_attr = OpenMaya.MFnNumericAttribute()

        #Create the attribute
        attribute = uv_attr.create(
            longName,
            shortName,
            OpenMaya.MFnNumericData.k2Float
        )

        if type == 0:
            uv_attr.readable = False
            uv_attr.writable = True
            uv_attr.keyable = True
        elif type == 1:
            uv_attr.readable = True
            uv_attr.writable = False
            uv_attr.keyable = False
        else:
            raise ValueError("Argument 'type' must be 0 or 1.")

        # Add the attribute to the node
        node.addAttribute(attribute)

        return attribute
    
    @staticmethod
    def createCurveAttr(node, longName, shortName, type = 0):
        """Create a curve attribute for this node

        :param node: The node to add this attribute
        :type node: MPxNode
        :param longName: Long attribute name
        :type longName: string
        :param shortName: Short attribute name
        :type shortName: string
        :param type: Defines the attribute's type, 0:input, 1:output, defaults to 0
        :type type: int, optional
        :param default: The default attribute's value, defaults to an empty string
        :type default: string, optional
        :return: The created attribute
        :rtype: OpenMaya.MFnTypedAttribute
        """
        #Declare attribute's type to create
        curve_attr = OpenMaya.MFnTypedAttribute()

        #Create the attribute
        attribute = curve_attr.create(
            longName,
            shortName,
            OpenMaya.MFnData.kNurbsCurve
        )

        if type == 0:
            curve_attr.readable = False
            curve_attr.writable = True
            curve_attr.keyable = False
        elif type == 1:
            curve_attr.readable = True
            curve_attr.writable = False
            curve_attr.keyable = False
        else:
            raise ValueError("Argument 'type' must be 0 or 1.")

        # Add the attribute to the node
        node.addAttribute(attribute)

        return attribute
    
    @staticmethod
    def createMatrixGrpAttr(node, longName, shortName, type = 0, total = 2):
        """Create a compound attribute containing matrix for this node

        :param node: The node to add this attribute
        :type node: MPxNode
        :param longName: Long attribute name
        :type longName: string
        :param shortName: Short attribute name
        :type shortName: string
        :param type: Defines the attribute's type, 0:input, 1:output, defaults to 0
        :type type: int, optional
        :param total: Number of matrix attributes to create
        :type total: int
        """
        #Declare attribute's type to create
        compound_attr = OpenMaya.MFnCompoundAttribute()
        matrix_attr = OpenMaya.MFnMatrixAttribute()

        childAttributes = []

        for i in range(total):
            #Create the child attributes
            attribute = matrix_attr.create(
                "%s%s"%(longName, i),
                "%s%s"%(shortName ,i),
                matrix_attr.kFloat
            )

            if type == 0:
                matrix_attr.readable = False
                matrix_attr.writable = True
                matrix_attr.keyable = True
            elif type == 1:
                matrix_attr.readable = True
                matrix_attr.writable = False
                matrix_attr.keyable = False
            else:
                raise ValueError("Argument 'type' must be 0 or 1.")
            
            childAttributes.append(attribute)

        #Create the compound attribute
        parentAttribute = compound_attr.create(
            longName,
            shortName
        )

        # Add child attributes to the compound attr
        for a in childAttributes:
            compound_attr.addChild(a)

        # Add the compund attribute to the node
        node.addAttribute(parentAttribute)

        return childAttributes
    
    @staticmethod
    def createEnumAttr(node, longName, shortName, items, type = 0):
        """Create an enum attribute for this node

        :param node: The node to add this attribute
        :type node: MPxNode
        :param longName: Long attribute name
        :type longName: string
        :param shortName: Short attribute name
        :type shortName: string
        :param items: The labels to enumerate
        :type items: list(string,)
        :param type: Defines the attribute's type, 0:input, 1:output, defaults to 0
        :type type: int, optional
        :return: The created attribute
        :rtype: OpenMaya.MFnTypedAttribute
        """
        #Declare attribute's type to create
        enum_attr = OpenMaya.MFnEnumAttribute()

        #Create the child attributes
        attribute = enum_attr.create(
            longName,
            shortName
        )

        for i in range(len(items)):
            enum_attr.addField(items[i], i)

        if type == 0:
            enum_attr.readable = False
            enum_attr.writable = True
            enum_attr.keyable = True
        elif type == 1:
            enum_attr.readable = True
            enum_attr.writable = False
            enum_attr.keyable = False
        else:
            raise ValueError("Argument 'type' must be 0 or 1.")

        # Add the attribute to the node
        node.addAttribute(attribute)

        return attribute
    
    def setDependencies(self, inputs, outputs):
        """Set internal node dependencies

        :param inputs: The input attributes to connect
        :type inputs: list(OpenMaya.MFnAttribute)
        :param outputs: The output attributes to connect
        :type outputs: list(OpenMaya.MFnAttribute)
        """
        for i in inputs:
            for o in outputs:
                self.attributeAffects(i, o)

    def addAttributes(self, attributes):
        """Add attributes to the node

        :param attributes: list of created attributes
        :type attributes: list(OpenMaya.MFnAttribute)
        """
        for attr in attributes:
            self.addAttribute(attr)