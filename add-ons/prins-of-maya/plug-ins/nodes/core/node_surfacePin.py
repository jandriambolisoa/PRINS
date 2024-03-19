from maya.api       import OpenMaya
from maya           import mel

from .node_base     import POM_BaseNode

class POM_SurfacePin(POM_BaseNode):
    
    # Define identity
    type_name = "POM_SurfacePin"

    # Define attributes
    inOrigMesh =        None
    inOrigPosition =    None
    inMesh =            None
    outMatrix =         None

    def __init__(self):
        super().__init__()

    @classmethod
    def initialize(cls):

        cls.inOrigMesh = cls.createMeshAttr(
            cls,
            "inputOriginalMesh",
            "inOrigMesh"
        )
        
        cls.inOrigPosition = cls.createVectorAttr(
            cls,
            "inputOriginalPosition",
            "inOrigPosition"
        )
        
        cls.inMesh = cls.createMeshAttr(
            cls,
            "inputDeformedMesh",
            "inDeformedMesh"
        )
        
        cls.outMatrix = cls.createMatrixAttr(
            cls,
            "outputMatrix",
            "outMatrix",
            1
        )
        
        cls.attributeAffects(cls.inOrigPosition, cls.outMatrix)
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
            input_origMesh = data_block.inputValue(self.inOrigMesh).asMesh()
            input_mesh = data_block.inputValue(self.inMesh).asMesh()
            input_origPosition = data_block.inputValue(self.inOrigPosition).asFloat3()

            # Make sure there are mesh inputs
            if input_mesh.isNull() or input_origMesh.isNull():
                return
            
            # Get MFnMesh and MPoint from inputs
            origMesh = OpenMaya.MFnMesh(input_origMesh)
            mesh = OpenMaya.MFnMesh(input_mesh)
            origPoint = OpenMaya.MPoint(input_origPosition)

            # Get the closest point on surface from orig datas
            closestUV = origMesh.getUVAtPoint(
                origPoint,
                OpenMaya.MSpace.kWorld
                )
            
            # Compute deformed surface point matrix
            ## Get position
            posResult = mesh.getPointAtUV(
                closestUV[2],
                closestUV[0],
                closestUV[1],
                OpenMaya.MSpace.kWorld
            )

            ## Get normal
            allFaceNormals = mesh.getFaceVertexNormals(
                closestUV[2],
                OpenMaya.MSpace.kWorld
            )
            x = []
            y = []
            z = []
            for i in range(len(allFaceNormals)):
                vector = allFaceNormals[i]
                x.append(vector.x)
                y.append(vector.y)
                z.append(vector.z)

            normalResult = [sum(x)/len(allFaceNormals), sum(y)/len(allFaceNormals), sum(z)/len(allFaceNormals)]

            ## Get the other two vectors (x and z)
            faceVertices = mesh.getPolygonVertices(closestUV[2])
            xResult = mesh.getPoint(faceVertices[1]) - mesh.getPoint(faceVertices[0])

            MELnormalResult =   "{%s, %s, %s}"%(normalResult[0], normalResult[1], normalResult[2])
            MELxResult =        "{%s, %s, %s}"%(xResult.x, xResult.y, xResult.z)

            zResult = mel.eval("crossProduct %s %s 1 1"%(MELnormalResult, MELxResult))
            MELzResult = "{%s, %s, %s}"%(zResult[0], zResult[1], zResult[2])
            
            xResult = mel.eval("crossProduct %s %s 1 1"%(MELnormalResult, MELzResult))

            result = OpenMaya.MFloatMatrix([
                xResult[0],         xResult[1],         xResult[2],         0.0,
                normalResult[0],    normalResult[1],    normalResult[2],    0.0,
                zResult[0],         zResult[1],         zResult[2],         0.0,
                posResult.x,        posResult.y,        posResult.z,        1.0
            ])
            
            # Get output value and update
            output_handle = data_block.outputValue(self.outMatrix)
            output_handle.setMFloatMatrix(result)
            output_handle.setClean()

