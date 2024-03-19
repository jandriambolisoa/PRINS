from .core.node_ptPin               import POM_PointPin
from .core.node_surfacePin          import POM_SurfacePin
from .core.node_curveCompressor     import POM_CurveCompressor
from .core.node_vectorLogic         import POM_VectorLogic
from .core.node_matrixToVectors     import POM_MatrixToVectors
from .core.node_vectorsToMatrix     import POM_VectorsToMatrix

def getPrinsNodes():
    all = {}

    # Add nodes
    all[0x20] = POM_PointPin
    all[0x21] = POM_SurfacePin
    all[0x22] = POM_CurveCompressor
    all[0x23] = POM_VectorLogic
    all[0x24] = POM_MatrixToVectors
    all[0x25] = POM_VectorsToMatrix

    return all