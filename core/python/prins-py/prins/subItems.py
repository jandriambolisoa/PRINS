from .superItems import ItemBase

class Category(ItemBase):
    
    # Asset
    kNone = 0
    kProp = 1
    kCharacter = 2
    kEnv = 3
    kAnimal = 4
    kNature = 5
    kVehicle = 6

    # Show
    kShort = 91 
    kSeries = 92 
    kFeature = 93 

    def __init__(self):
        super().__init__()


class Task(ItemBase):

    # Asset  
    kNone = 0 
    kModeling = 1 
    kTexturing = 2 
    kRigging = 3 
    kShading = 4 
    kSetDressing = 5 
    kDesign = 6

    # Shot
    kAnimation = 51
    kLighting = 52
    kFX = 53
    kCFX = 54
    kCompositing = 55
    kPreviz = 56

    kTesting = 99

    def __init__(self):
        super().__init__()


class Status(ItemBase):

    kNone = 0

    kAssetStandBy = 11
    kAssetInProgress = 12
    kAssetAbort = 18
    kAssetDone = 19

    kTaskToDo = 21
    kTaskInProgress = 22
    kTaskToReview = 23
    kTaskAbort = 28
    kTaskDone = 29

    kShowStandBy = 31
    kShowInProgress = 32
    kShowAbort = 38
    kShowDone = 39

    kEpisodeStandBy = 41
    kEpisodeInProgress = 42
    kEpisodeAbort = 48
    kEpisodeDone = 49

    kSequenceStandBy = 51
    kSequenceInProgress = 52
    kSequenceAbort = 58
    kSequenceDone = 59

    kShotStandBy = 61
    kShotInProgress = 62
    kShotAbort = 68
    kShotDone = 69

    def __init__(self):
        super().__init__()

