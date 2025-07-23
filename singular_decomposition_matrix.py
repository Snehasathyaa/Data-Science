from numpy import matrix
from numpy import matmul
from  numpy import diag
from scipy.linalg import svd
A=matrix([[1,2,3],[4,5,6],[7,8,9]])
print("A = \n",A)
U,S,V=svd(A)
print("U = \n",U)
print("S = \n",S)
print("V = \n",V)
Sigma=diag(S)
print("Sigma = \n",Sigma)
B=matmul(U,matmul(Sigma,V))
print("B = \n",B)
