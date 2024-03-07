from .core.node_ptPin               import PN_PointPin
from .core.node_surfacePin          import PN_SurfacePin
from .core.node_curveCompressor     import PN_CurveCompressor

def getPrinsNodes():
    all = {}

    # Add nodes
    all[0x20] = PN_PointPin
    all[0x21] = PN_SurfacePin
    all[0x22] = PN_CurveCompressor

    return all