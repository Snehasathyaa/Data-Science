library(e1071)
library(caTools)
library(gmodels)
iris = read.csv("C:/Users/Admin/Desktop/Sneha - DS/file/iris.csv")
set.seed(100)
split <- sample.split(iris$species, SplitRatio = 0.7)
iris1 <- subset(iris, split == "TRUE")
iris2 <- subset(iris, split == "FALSE")
iris_train = iris1[,1:4]
iris_test = iris2[,1:4]
iris_train_labels = iris1[,5]
iris_test_labels = iris2[,5]
classifier_cl <- naiveBayes(iris_train,iris_train_labels )
print(classifier_cl)
iris_test_pred <- predict(classifier_cl, iris_test)
print(iris_test_pred)
CrossTable(iris_test_labels, iris_test_pred, prop.chisq=FALSE)


------------------------------------------------------------------------


Naive Bayes Classifier for Discrete Predictors

Call:
naiveBayes.default(x = iris_train, y = iris_train_labels)

A-priori probabilities:
iris_train_labels
    Setosa Versicolor  Virginica 
 0.3333333  0.3333333  0.3333333 

Conditional probabilities:
                 sepal.length
iris_train_labels     [,1]      [,2]
       Setosa     5.025714 0.3266072
       Versicolor 5.894286 0.5455396
       Virginica  6.625714 0.5907836

                 sepal.width
iris_train_labels     [,1]      [,2]
       Setosa     3.445714 0.3567359
       Versicolor 2.782857 0.3468223
       Virginica  2.985714 0.2658426

                 petal.length
iris_train_labels     [,1]      [,2]
       Setosa     1.471429 0.1808012
       Versicolor 4.191429 0.4859021
       Virginica  5.608571 0.5083835

                 petal.width
iris_train_labels      [,1]       [,2]
       Setosa     0.2285714 0.08934872
       Versicolor 1.3228571 0.20448747
       Virginica  2.0485714 0.28218833

> iris_test_pred <- predict(classifier_cl, iris_test)
> print(iris_test_pred)
 [1] Setosa     Setosa     Setosa     Setosa     Setosa     Setosa    
 [7] Setosa     Setosa     Setosa     Setosa     Setosa     Setosa    
[13] Setosa     Setosa     Setosa     Versicolor Versicolor Versicolor
[19] Versicolor Versicolor Versicolor Virginica  Versicolor Versicolor
[25] Versicolor Versicolor Versicolor Versicolor Versicolor Versicolor
[31] Versicolor Virginica  Virginica  Virginica  Virginica  Virginica 
[37] Virginica  Versicolor Virginica  Virginica  Virginica  Virginica 
[43] Virginica  Virginica  Virginica 
Levels: Setosa Versicolor Virginica
> CrossTable(iris_test_labels, iris_test_pred, prop.chisq=FALSE)

 
   Cell Contents
|-------------------------|
|                       N |
|           N / Row Total |
|           N / Col Total |
|         N / Table Total |
|-------------------------|

 
Total Observations in Table:  45 

 
                 | iris_test_pred 
iris_test_labels |     Setosa | Versicolor |  Virginica |  Row Total | 
-----------------|------------|------------|------------|------------|
          Setosa |         15 |          0 |          0 |         15 | 
                 |      1.000 |      0.000 |      0.000 |      0.333 | 
                 |      1.000 |      0.000 |      0.000 |            | 
                 |      0.333 |      0.000 |      0.000 |            | 
-----------------|------------|------------|------------|------------|
      Versicolor |          0 |         14 |          1 |         15 | 
                 |      0.000 |      0.933 |      0.067 |      0.333 | 
                 |      0.000 |      0.875 |      0.071 |            | 
                 |      0.000 |      0.311 |      0.022 |            | 
-----------------|------------|------------|------------|------------|
       Virginica |          0 |          2 |         13 |         15 | 
                 |      0.000 |      0.133 |      0.867 |      0.333 | 
                 |      0.000 |      0.125 |      0.929 |            | 
                 |      0.000 |      0.044 |      0.289 |            | 
-----------------|------------|------------|------------|------------|
    Column Total |         15 |         16 |         14 |         45 | 
                 |      0.333 |      0.356 |      0.311 |            | 
-----------------|------------|------------|------------|------------|

 
> 
