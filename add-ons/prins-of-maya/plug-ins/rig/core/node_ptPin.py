from maya.api       import OpenMaya
from maya           import mel

from .node_base     import PN_BaseNode

class PN_PointPin(PN_BaseNode):
    
    # Define identity
    type_name = "PN_PointPin"

    # Define attributes
    inMesh =        None
    pointID =       None
    outMatrix =     None

    def __init__(self):
        super().__init__()

    @classmethod
    def initialize(cls):

        cls.inMesh = cls.createMeshAttr(
            cls,
            "inputMesh",
            "inMesh"
        )

        cls.pointID = cls.createIntegerAttr(
            cls,
            "pointID",
            "id"
        )

        cls.outMatrix = cls.createMatrixAttr(
            cls,
            "outputMatrix",
            "outMatrix",
            1
        )
        
        cls.attributeAffects(cls.pointID, cls.outMatrix)
        cls.attributeAffects(cls.inMesh, cls.outMatrix)

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
            input_mesh = data_block.inputValue(self.inMesh).asMesh()
            input_point = data_block.inputValue(self.pointID).asInt()

            # Make sure there is an input
            if input_mesh.isNull():
                return
            
            # Get MFnMesh from input_mesh MObject
            mesh = OpenMaya.MFnMesh(input_mesh)

            # Get point position and normal
            point = mesh.getPoint(
                input_point,
                OpenMaya.MSpace.kWorld
            )

            pointNormal = mesh.getVertexNormal(
                input_point,
                True,
                OpenMaya.MSpace.kWorld
            )

            # Compute point matrix
            try:
                nextPoint = mesh.getPoint(
                    input_point+1,
                    OpenMaya.MSpace.kWorld
                )
            except:
                nextPoint = mesh.getPoint(
                    input_point-1,
                    OpenMaya.MSpace.kWorld
                )

            nextPointVector =   nextPoint - point
            MELnextPointVector =   "{%s, %s, %s}"%(nextPointVector.x, nextPointVector.y, nextPointVector.z)
            MELpointNormal =       "{%s, %s, %s}"%(pointNormal.x, pointNormal.y, pointNormal.z)

            crossVector = mel.eval("crossProduct %s %s 1 1"%(MELnextPointVector, MELpointNormal))
            MELcrossVector = "{%s, %s, %s}"%(crossVector[0], crossVector[1], crossVector[2])
            
            nextPointCrossVector = mel.eval("crossProduct %s %s 1 1"%(MELpointNormal, MELcrossVector))

            result = OpenMaya.MFloatMatrix([
                nextPointCrossVector[0],    nextPointCrossVector[1],    nextPointCrossVector[2],    0.0,
                pointNormal.x,              pointNormal.y,              pointNormal.z,              0.0,
                crossVector[0],             crossVector[1],             crossVector[2],             0.0,
                point.x,                    point.y,                    point.z,                    1.0
            ])
            
            # Get output value and update
            output_handle = data_block.outputValue(self.outMatrix)
            output_handle.setMFloatMatrix(result)
            output_handle.setClean()

