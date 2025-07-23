import numpy as np
import math

def translation_matrix(tx, ty, tz):
    return np.array([
        [1, 0, 0, tx],
        [0, 1, 0, ty],
        [0, 0, 1, tz],
        [0, 0, 0,  1]
    ])

def scaling_matrix(sx, sy, sz):
    return np.array([
        [sx, 0,  0,  0],
        [0, sy,  0,  0],
        [0,  0, sz,  0],
        [0,  0,  0,  1]
    ])

def rotation_matrix_x(theta):
    radians = math.radians(theta)
    c = math.cos(radians)
    s = math.sin(radians)
    return np.array([
        [1, 0, 0, 0],
        [0, c, -s, 0],
        [0, s,  c, 0],
        [0, 0, 0, 1]
    ])

def rotation_matrix_y(theta):
    radians = math.radians(theta)
    c = math.cos(radians)
    s = math.sin(radians)
    return np.array([
        [ c, 0, s, 0],
        [ 0, 1, 0, 0],
        [-s, 0, c, 0],
        [ 0, 0, 0, 1]
    ])

def rotation_matrix_z(theta):
    radians = math.radians(theta)
    c = math.cos(radians)
    s = math.sin(radians)
    return np.array([
        [c, -s, 0, 0],
        [s,  c, 0, 0],
        [0,  0, 1, 0],
        [0,  0, 0, 1]
    ])

def print_matrix(name, matrix):
    print(f"{name}:\n{matrix}\n")


if __name__ == "__main__":
    
    tx, ty, tz = 2, 3, 4
    sx, sy, sz = 2, 2, 2
    angle_x = 30
    angle_y = 45
    angle_z = 60

    
    t_matrix = translation_matrix(tx, ty, tz)
    s_matrix = scaling_matrix(sx, sy, sz)
    rx_matrix = rotation_matrix_x(angle_x)
    ry_matrix = rotation_matrix_y(angle_y)
    rz_matrix = rotation_matrix_z(angle_z)

    
    print_matrix("Translation Matrix", t_matrix)
    print_matrix("Scaling Matrix", s_matrix)
    print_matrix("Rotation Matrix X", rx_matrix)
    print_matrix("Rotation Matrix Y", ry_matrix)
    print_matrix("Rotation Matrix Z", rz_matrix)





____________________________________________________________________________________________________________


output:

Translation Matrix:
[[1 0 0 2]
 [0 1 0 3]
 [0 0 1 4]
 [0 0 0 1]]

Scaling Matrix:
[[2 0 0 0]
 [0 2 0 0]
 [0 0 2 0]
 [0 0 0 1]]

Rotation Matrix X:
[[ 1.         0.         0.         0.       ]
 [ 0.         0.8660254 -0.5        0.       ]
 [ 0.         0.5        0.8660254  0.       ]
 [ 0.         0.         0.         1.       ]]

Rotation Matrix Y:
[[ 0.70710678  0.          0.70710678  0.        ]
 [ 0.          1.          0.          0.        ]
 [-0.70710678  0.          0.70710678  0.        ]
 [ 0.          0.          0.          1.        ]]

Rotation Matrix Z:
[[ 0.5       -0.8660254  0.         0.       ]
 [ 0.8660254  0.5        0.         0.       ]
 [ 0.         0.         1.         0.       ]
 [ 0.         0.         0.         1.       ]]



