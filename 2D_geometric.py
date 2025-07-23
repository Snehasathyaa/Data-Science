import numpy
def translationMatrix(tx=0,ty=0):
    return numpy.matrix([[1,0,tx],[0,1,ty],[0,0,1]])
matrix1=translationMatrix(1,1)
print("translation matrix = \n",matrix1)
def rotationMatrix(degree):
    theta=numpy.radians(degree)
    c,s=numpy.cos(theta),numpy.sin(theta)
    return numpy.matrix([[c,-s,0],[s,c,0],[0,0,1]])
matrix2=rotationMatrix(30)
print("rotation matrix = \n",matrix2)
def scalingMatrix(sx=0, sy=0):
    return numpy.matrix([[sx,0,0],[0,sy,0],[0, 0,1]])
matrix3=scalingMatrix(2,2)
print("scaling matrix = \n",matrix3)
