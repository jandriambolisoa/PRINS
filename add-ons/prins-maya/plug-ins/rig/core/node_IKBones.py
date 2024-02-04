from maya.api       import OpenMaya
from maya           import mel

from .node_base     import PN_BaseNode

class PN_IKBones(PN_BaseNode):
    
    # Define identity
    type_name = "PN_IKBones"

    # Define attributes
    inRoot =        None
    inUpVector =    None
    inTarget =      None
    inStretch =     None
    outBone1 =      None
    outBone2 =      None
    outBone3 =      None

    def __init__(self):
        super().__init__()

    @classmethod
    def initialize(cls):

        pass

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
        
        pass

