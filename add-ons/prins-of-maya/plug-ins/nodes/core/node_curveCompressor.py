from maya.api       import OpenMaya
from maya           import mel

from .node_base     import POM_BaseNode

from .logic         import blend

class POM_CurveCompressor(POM_BaseNode):
    
    # Define identity
    type_name = "POM_CurveCompressor"

    # Define attributes
    inMesh =            None
    inCompressPoint =   None
    inCompress =        None
    inCurve =           None
    inNbOfOutputs =     None
    outMatrices =       None

    def __init__(self):
        super().__init__()

    @classmethod
    def initialize(cls):
        
        cls.inMesh = cls.createMeshAttr(
            cls,
            "inputMesh",
            "inMesh"
        )
        
        cls.inCompressPoint = cls.createFloatAttr(
            cls,
            "inputPointCompression",
            "inPtCompress",
            min=0.0,
            max=1.0
        )

        cls.inCompress = cls.createFloatAttr(
            cls,
            "inputCompress",
            "inCompress",
            min=0.0,
            max=1.0
        )

        cls.inCurve = cls.createCurveAttr(
            cls,
            "inputCurve",
            "inCurve"
        )

        cls.inNbOfOutputs = cls.createIntegerAttr(
            cls,
            "numberOfOutputs",
            "nbOfOutputs",
            default=2,
            min=2,
            max=10
        )

        cls.outMatrices = cls.createMatrixGrpAttr(
            cls,
            "outputMatrices",
            "outMatrices",
            1,
            10
        )

        cls.outMatrix0 = cls.outMatrices[0]
        cls.outMatrix1 = cls.outMatrices[1]
        cls.outMatrix2 = cls.outMatrices[2]
        cls.outMatrix3 = cls.outMatrices[3]
        cls.outMatrix4 = cls.outMatrices[4]
        cls.outMatrix5 = cls.outMatrices[5]
        cls.outMatrix6 = cls.outMatrices[6]
        cls.outMatrix7 = cls.outMatrices[7]
        cls.outMatrix8 = cls.outMatrices[8]
        cls.outMatrix9 = cls.outMatrices[9]

        cls.attributeAffects(cls.inMesh, cls.outMatrix0)
        cls.attributeAffects(cls.inCompressPoint, cls.outMatrix0)
        cls.attributeAffects(cls.inCompress, cls.outMatrix0)
        cls.attributeAffects(cls.inCurve, cls.outMatrix0)
        cls.attributeAffects(cls.inNbOfOutputs, cls.outMatrix0)

        cls.attributeAffects(cls.inMesh, cls.outMatrix1)
        cls.attributeAffects(cls.inCompressPoint, cls.outMatrix1)
        cls.attributeAffects(cls.inCompress, cls.outMatrix1)
        cls.attributeAffects(cls.inCurve, cls.outMatrix1)
        cls.attributeAffects(cls.inNbOfOutputs, cls.outMatrix1)

        cls.attributeAffects(cls.inMesh, cls.outMatrix2)
        cls.attributeAffects(cls.inCompressPoint, cls.outMatrix2)
        cls.attributeAffects(cls.inCompress, cls.outMatrix2)
        cls.attributeAffects(cls.inCurve, cls.outMatrix2)
        cls.attributeAffects(cls.inNbOfOutputs, cls.outMatrix2)

        cls.attributeAffects(cls.inMesh, cls.outMatrix3)
        cls.attributeAffects(cls.inCompressPoint, cls.outMatrix3)
        cls.attributeAffects(cls.inCompress, cls.outMatrix3)
        cls.attributeAffects(cls.inCurve, cls.outMatrix3)
        cls.attributeAffects(cls.inNbOfOutputs, cls.outMatrix3)

        cls.attributeAffects(cls.inMesh, cls.outMatrix4)
        cls.attributeAffects(cls.inCompressPoint, cls.outMatrix4)
        cls.attributeAffects(cls.inCompress, cls.outMatrix4)
        cls.attributeAffects(cls.inCurve, cls.outMatrix4)
        cls.attributeAffects(cls.inNbOfOutputs, cls.outMatrix4)

        cls.attributeAffects(cls.inMesh, cls.outMatrix5)
        cls.attributeAffects(cls.inCompressPoint, cls.outMatrix5)
        cls.attributeAffects(cls.inCompress, cls.outMatrix5)
        cls.attributeAffects(cls.inCurve, cls.outMatrix5)
        cls.attributeAffects(cls.inNbOfOutputs, cls.outMatrix5)

        cls.attributeAffects(cls.inMesh, cls.outMatrix6)
        cls.attributeAffects(cls.inCompressPoint, cls.outMatrix6)
        cls.attributeAffects(cls.inCompress, cls.outMatrix6)
        cls.attributeAffects(cls.inCurve, cls.outMatrix6)
        cls.attributeAffects(cls.inNbOfOutputs, cls.outMatrix6)

        cls.attributeAffects(cls.inMesh, cls.outMatrix7)
        cls.attributeAffects(cls.inCompressPoint, cls.outMatrix7)
        cls.attributeAffects(cls.inCompress, cls.outMatrix7)
        cls.attributeAffects(cls.inCurve, cls.outMatrix7)
        cls.attributeAffects(cls.inNbOfOutputs, cls.outMatrix7)

        cls.attributeAffects(cls.inMesh, cls.outMatrix8)
        cls.attributeAffects(cls.inCompressPoint, cls.outMatrix8)
        cls.attributeAffects(cls.inCompress, cls.outMatrix8)
        cls.attributeAffects(cls.inCurve, cls.outMatrix8)
        cls.attributeAffects(cls.inNbOfOutputs, cls.outMatrix8)

        cls.attributeAffects(cls.inMesh, cls.outMatrix9)
        cls.attributeAffects(cls.inCompressPoint, cls.outMatrix9)
        cls.attributeAffects(cls.inCompress, cls.outMatrix9)
        cls.attributeAffects(cls.inCurve, cls.outMatrix9)
        cls.attributeAffects(cls.inNbOfOutputs, cls.outMatrix9)

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
        if plug == self.outMatrix0 or plug == self.outMatrix1 or plug == self.outMatrix2 or plug == self.outMatrix3 or plug == self.outMatrix4 or plug == self.outMatrix5 or plug == self.outMatrix6 or plug == self.outMatrix7 or plug == self.outMatrix8 or plug == self.outMatrix9:
            
            # Get input data
            input_mesh = data_block.inputValue(self.inMesh).asMesh()
            input_compressPoint = data_block.inputValue(self.inCompressPoint).asFloat()
            input_compress = data_block.inputValue(self.inCompress).asFloat()
            input_curve = data_block.inputValue(self.inCurve).asNurbsCurveTransformed()
            input_nbOfOutputs = data_block.inputValue(self.inNbOfOutputs).asInt()

            # Make sure there are mesh inputs
            if input_mesh.isNull():
                mesh = None
            else:
                # Get MFnMesh from input
                mesh = OpenMaya.MFnMesh(input_mesh)

            # Get MFnCurve
            if input_curve.isNull():
                return
            curve = OpenMaya.MFnNurbsCurve(input_curve)
            curveLen = curve.length()

            # Compute matrix for each output
            allMatrices = []

            for i in range(input_nbOfOutputs):
                # Get the param of the curve where the output must be
                normParam = blend(i / (input_nbOfOutputs-1), input_compressPoint, input_compress)
                param = curve.findParamFromLength(normParam * curveLen)

                # Get output position and tangent
                curvePt = curve.getPointAtParam(
                    param,
                    OpenMaya.MSpace.kObject
                )
                curvePtTangent = curve.tangent(
                    param,
                    OpenMaya.MSpace.kObject
                ).normalize()

                if mesh:
                    # Get normal at curvePt
                    closestUV = mesh.getUVAtPoint(
                        curvePt,
                        OpenMaya.MSpace.kWorld
                    )

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

                    curvePtNormal = OpenMaya.MVector([
                        sum(x)/len(allFaceNormals),
                        sum(y)/len(allFaceNormals),
                        sum(z)/len(allFaceNormals)
                    ])

                else:
                    # If no mesh, put the normal to world up vector
                    curvePtNormal = OpenMaya.MVector([
                        0.0,
                        1.0,
                        0.0
                    ])

                # Get cross vector
                MELcurvePtTangent = "{%s, %s, %s}"%(curvePtTangent.x, curvePtTangent.y, curvePtTangent.z)
                MELcurvePtNormal = "{%s, %s, %s}"%(curvePtNormal.x, curvePtNormal.y, curvePtNormal.z)
                crossResult = OpenMaya.MVector(mel.eval("crossProduct %s %s 1 1"%(MELcurvePtNormal, MELcurvePtTangent)))
                MELcrossResult = "{%s, %s, %s}"%(crossResult.x, crossResult.y, crossResult.z)
                curvePtNormal = OpenMaya.MVector(mel.eval("crossProduct %s %s 1 1"%(MELcurvePtTangent, MELcrossResult)))

                # Compute matrix
                result = OpenMaya.MFloatMatrix([
                    crossResult.x,      crossResult.y,      crossResult.z,      0.0,
                    curvePtNormal.x,    curvePtNormal.y,    curvePtNormal.z,    0.0,
                    curvePtTangent.x,   curvePtTangent.y,   curvePtTangent.z,   0.0,
                    curvePt.x,          curvePt.y,          curvePt.z,          1.0
                ])

                allMatrices.append(result)
                
            # Distribute the matrices result to the output list
            ## outMatrix0
            output_handle = data_block.outputValue(self.outMatrix0)
            output_handle.setMFloatMatrix(allMatrices[0])
            output_handle.setClean()
            ## outMatrix1
            output_handle = data_block.outputValue(self.outMatrix1)
            output_handle.setMFloatMatrix(allMatrices[1])
            output_handle.setClean()
            ## outMatrix2
            if(len(allMatrices) > 2):
                output_handle = data_block.outputValue(self.outMatrix2)
                output_handle.setMFloatMatrix(allMatrices[2])
                output_handle.setClean()
            ## outMatrix3
            if(len(allMatrices) > 3):
                output_handle = data_block.outputValue(self.outMatrix3)
                output_handle.setMFloatMatrix(allMatrices[3])
                output_handle.setClean()
            ## outMatrix4
            if(len(allMatrices) > 4):
                output_handle = data_block.outputValue(self.outMatrix4)
                output_handle.setMFloatMatrix(allMatrices[4])
                output_handle.setClean()
            ## outMatrix5
            if(len(allMatrices) > 5):
                output_handle = data_block.outputValue(self.outMatrix5)
                output_handle.setMFloatMatrix(allMatrices[5])
                output_handle.setClean()
            ## outMatrix6
            if(len(allMatrices) > 6):
                output_handle = data_block.outputValue(self.outMatrix6)
                output_handle.setMFloatMatrix(allMatrices[6])
                output_handle.setClean()
            ## outMatrix7
            if(len(allMatrices) > 7):
                output_handle = data_block.outputValue(self.outMatrix7)
                output_handle.setMFloatMatrix(allMatrices[7])
                output_handle.setClean()
            ## outMatrix8
            if(len(allMatrices) > 8):
                output_handle = data_block.outputValue(self.outMatrix8)
                output_handle.setMFloatMatrix(allMatrices[8])
                output_handle.setClean()
            ## outMatrix9
            if(len(allMatrices) > 9):
                output_handle = data_block.outputValue(self.outMatrix9)
                output_handle.setMFloatMatrix(allMatrices[9])
                output_handle.setClean()
                

