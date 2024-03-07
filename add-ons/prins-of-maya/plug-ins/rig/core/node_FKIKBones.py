from maya.api       import OpenMaya
from maya           import mel

from .node_base     import PN_BaseNode

class PN_FKIKBones(PN_BaseNode):
    
    # Define identity
    type_name = "PN_FKIKBones"

    # Define attributes
    inIKRoot =          None
    inIKUpVector =      None
    inIKWrist =         None
    inFKHumerus =       None
    inFKRadius =        None
    inFKWrist =         None
    inBendHumerus =     None
    inBendRadius =      None
    inBlend =           None
    inStretch =         None
    inHumerusTorsion =  None
    inRadiusTorsion =   None
    
    outBone0 =          None
    outBone1 =          None
    outBone2 =          None
    outBone3 =          None
    outBone4 =          None
    outBone5 =          None
    outBone6 =          None
    outBone7 =          None
    outBone8 =          None

    def __init__(self):
        super().__init__()

    @classmethod
    def initialize(cls):

        cls.inIKRoot = cls.createMatrixAttr(cls,
            "IK Root",
            "IKroot"
            )
        
        

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

