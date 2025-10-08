set.seed(100)
iris <- read.csv("C:/Users/Admin/Desktop/sneha -ds/iris.csv")
iris2 <- iris
iris2$species <- NULL
iris_clusters <- kmeans(iris2, 3)
print(iris_clusters)
26

print(table(iris$species, iris_clusters$cluster))


---------------------------------------------------------


> print(iris_clusters)
K-means clustering with 3 clusters of sizes 62, 38, 50

Cluster means:
  sepal.length sepal.width petal.length petal.width
1     5.901613    2.748387     4.393548    1.433871
2     6.850000    3.073684     5.742105    2.071053
3     5.006000    3.428000     1.462000    0.246000

Clustering vector:
  [1] 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3
 [30] 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 1 1 2 1 1 1 1 1
 [59] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 1 1 1 1 1 1 1 1 1
 [88] 1 1 1 1 1 1 1 1 1 1 1 1 1 2 1 2 2 2 2 1 2 2 2 2 2 2 1 1 2
[117] 2 2 2 1 2 1 2 1 2 2 1 1 2 2 2 2 2 1 2 2 2 2 1 2 2 2 1 2 2
[146] 2 1 2 2 1

Within cluster sum of squares by cluster:
[1] 39.82097 23.87947 15.15100
 (between_SS / total_SS =  88.4 %)

Available components:

[1] "cluster"      "centers"      "totss"        "withinss"    
[5] "tot.withinss" "betweenss"    "size"         "iter"        
[9] "ifault"      
> 26
[1] 26
> print(table(iris$species, iris_clusters$cluster))
            
              1  2  3
  Setosa      0  0 50
  Versicolor 48  2  0
  Virginica  14 36  0
> 
