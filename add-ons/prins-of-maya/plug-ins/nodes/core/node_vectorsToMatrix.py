from maya.api       import OpenMaya
from maya           import mel

from .node_base     import POM_BaseNode

class POM_VectorsToMatrix(POM_BaseNode):
    
    # Define identity
    type_name = "POM_VectorsToMatrix"

    # Define attributes
    inVectorX =         None
    inVectorY =         None
    inVectorZ =         None
    inVectorA =         None
    outMatrix =         None

    def __init__(self):
        super().__init__()

    @classmethod
    def initialize(cls):

        cls.inVectorX = cls.createVectorAttr(
            cls,
            "inputVectorX",
            "ix"
        )

        cls.inVectorY = cls.createVectorAttr(
            cls,
            "inputVectorY",
            "iy"
        )

        cls.inVectorZ = cls.createVectorAttr(
            cls,
            "inputVectorZ",
            "iz"
        )

        cls.inVectorA = cls.createVectorAttr(
            cls,
            "inputVectorA",
            "ia"
        )

        cls.outMatrix = cls.createMatrixAttr(
            cls,
            "outMatrix",
            "om",
            1
        )

        cls.attributeAffects(cls.inVectorX, cls.outMatrix)
        cls.attributeAffects(cls.inVectorY, cls.outMatrix)
        cls.attributeAffects(cls.inVectorZ, cls.outMatrix)
        cls.attributeAffects(cls.inVectorA, cls.outMatrix)

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
        if plug == self.outMatrix:
            
            # Get input data
            vectorX = data_block.inputValue(self.inVectorX).asFloat3()
            vectorY = data_block.inputValue(self.inVectorY).asFloat3()
            vectorZ = data_block.inputValue(self.inVectorZ).asFloat3()
            vectorA = data_block.inputValue(self.inVectorA).asFloat3()

            # Compose matrix
            result = OpenMaya.MFloatMatrix([
                vectorX[0], vectorX[1], vectorX[2], 0.0,
                vectorY[0], vectorY[1], vectorY[2], 0.0,
                vectorZ[0], vectorZ[1], vectorZ[2], 0.0,
                vectorA[0], vectorA[1], vectorA[2], 1.0
            ])
            
            # Get output values and update
            output_handle = data_block.outputValue(self.outMatrix)
            output_handle.setMFloatMatrix(result)
            output_handle.setClean()


