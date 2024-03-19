from maya.api       import OpenMaya
from maya           import mel

from .node_base     import POM_BaseNode

class POM_MatrixToVectors(POM_BaseNode):
    
    # Define identity
    type_name = "POM_MatrixToVectors"

    # Define attributes
    inMatrix =          None
    outVectorX =        None
    outVectorY =        None
    outVectorZ =        None
    outVectorA =        None

    def __init__(self):
        super().__init__()

    @classmethod
    def initialize(cls):

        cls.inMatrix = cls.createMatrixAttr(
            cls,
            "inMatrix",
            "mat"
        )
        
        cls.outVectorX = cls.createVectorAttr(
            cls,
            "outputVectorX",
            "ox",
            1
        )

        cls.outVectorY = cls.createVectorAttr(
            cls,
            "outputVectorY",
            "oy",
            1
        )

        cls.outVectorZ = cls.createVectorAttr(
            cls,
            "outputVectorZ",
            "oz",
            1
        )

        cls.outVectorA = cls.createVectorAttr(
            cls,
            "outputVectorA",
            "oa",
            1
        )

        cls.attributeAffects(cls.inMatrix, cls.outVectorX)
        cls.attributeAffects(cls.inMatrix, cls.outVectorY)
        cls.attributeAffects(cls.inMatrix, cls.outVectorZ)
        cls.attributeAffects(cls.inMatrix, cls.outVectorA)

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
        if plug == self.outVectorX or plug == self.outVectorY or plug == self.outVectorZ or plug == self.outVectorA:
            
            # Get input data
            matrix = data_block.inputValue(self.inMatrix).asFloatMatrix()
            
            # Get output values and update
            outputX_handle = data_block.outputValue(self.outVectorX)
            outputY_handle = data_block.outputValue(self.outVectorY)
            outputZ_handle = data_block.outputValue(self.outVectorZ)
            outputA_handle = data_block.outputValue(self.outVectorA)
            outputX_handle.set3Float(matrix.getElement(0, 0), matrix.getElement(0, 1), matrix.getElement(0, 2))
            outputY_handle.set3Float(matrix.getElement(1, 0), matrix.getElement(1, 1), matrix.getElement(1, 2))
            outputZ_handle.set3Float(matrix.getElement(2, 0), matrix.getElement(2, 1), matrix.getElement(2, 2))
            outputA_handle.set3Float(matrix.getElement(3, 0), matrix.getElement(3, 1), matrix.getElement(3, 2))
            outputX_handle.setClean()
            outputY_handle.setClean()
            outputZ_handle.setClean()
            outputA_handle.setClean()

