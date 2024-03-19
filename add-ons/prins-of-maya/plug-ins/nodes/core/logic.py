def norm(input, min, max):
    """
    Normalize the input value as min=0 and max=1
    Return:
        result : float
    """
    result = (input - min)/(max - min)

    return result

def blend(value1, value2, mix):
    """
    Blend between value1 and value2

    Return :   
        result : float
    """

    result = value1 + mix * (value2 - value1)
    return float(result)

def clamp(value, min, max):
    if value < min:
        result = min
    elif value > max:
        result = max
    else:
        result = value
    
    return result