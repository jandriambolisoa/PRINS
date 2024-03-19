from maya.api       import OpenMaya
from maya           import mel

from .node_base     import POM_BaseNode

class POM_VectorLogic(POM_BaseNode):
    
    # Define identity
    type_name = "POM_VectorLogic"

    # Define attributes
    operation =         None
    inVector1 =         None
    inVector2 =         None
    outVector =         None

    def __init__(self):
        super().__init__()

    @classmethod
    def initialize(cls):

        cls.operation = cls.createEnumAttr(
            cls,
            "operation",
            "op",
            ["dot", "cross", "sum", "difference"]
        )

        cls.inVector1 = cls.createVectorAttr(
            cls,
            "inputVector1",
            "v1"
        )

        cls.inVector2 = cls.createVectorAttr(
            cls,
            "inputVector2",
            "v2"
        )
        
        cls.outVector = cls.createVectorAttr(
            cls,
            "outputVector",
            "ov",
            1
        )


        cls.attributeAffects(cls.inputVector1, cls.outVector)
        cls.attributeAffects(cls.inputVector2, cls.outVector)
        cls.attributeAffects(cls.operation, cls.outVector)

    @classmethod
    def creator(cls):
        return cls()
    
    def compute(self, plug, data_block):
        """Compute the output values

        :param plug: The attributes that needs to be recomputed
        :type plug: MPlug
        :param data_block: Contains storage for node's attributes
        :type data_block: MDataBlock
        """
        if plug == self.outVector:
            
            # Get input data
            vector1 = data_block.inputValue(self.inVector1).asFloat3()
            vector2 = data_block.inputValue(self.inVector2).asFloat3()
            operation = data_block.inputValue(self.operation).asInt()

            vector1 = OpenMaya.MVector(vector1[0], vector1[1], vector1[2])
            vector2 = OpenMaya.MVector(vector2[0], vector2[1], vector2[2])

            # Compute output vector
            if operation == 0:
                dotProduct = vector1 * vector2
                result = [dotProduct, 0.0, 0.0]
            elif operation == 1:
                crossProduct = vector1 ^ vector2
                result = [crossProduct.x, crossProduct.y, crossProduct.z]
            elif operation == 2:
                sum = vector1 + vector2
                result = [sum.x, sum.y, sum.z]
            elif operation == 3:
                difference = vector1 - vector2
                result = [difference.x, difference.y, difference.z]
            
            # Get output value and update
            output_handle = data_block.outputValue(self.outVector)
            output_handle.set3Float(result)
            output_handle.setClean()

