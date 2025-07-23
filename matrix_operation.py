import numpy
matrix1=numpy.matrix([[1,3,5],[6,3,6],[3,9,7]])
matrix2=numpy.matrix([[5,6,2],[9,3,3],[2,4,7]])
print("matrix 1 = ",matrix1)
print("matrix 2 = ",matrix2)
matrix3=numpy.add(matrix1,matrix2)
matrix4=numpy.subtract(matrix1,matrix2)
matrix5=numpy.matmul(matrix1,matrix2)
matrix6=2*matrix1
matrix7=numpy.transpose(matrix1)
print("matrix 1 + matrix 2 = \n",matrix3)
print("matrix 1 - matrix 2 = \n",matrix4)
print("matrix 1 * matrix 2 = \n",matrix5)
print("2 * matrix 1 = \n",matrix6)
print("Transpose of matrix 1print("matrix 1 * matrix 2 = ",matrix5) = ",matrix7)
