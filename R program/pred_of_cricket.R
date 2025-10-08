library(C50)
library(gmodels)
cricket <- read.csv("C:/Users/Admin/Desktop/sneha -ds/cricket.csv")
cricket_train <- cricket[1:9,-5 ]
cricket_test <- cricket[10:14,-5 ]
cricket_train_labels = cricket[1:9, 5]
cricket_test_labels = cricket[10:14, 5]
cricket_model <- C5.0(cricket_train, as.factor(cricket_train_labels))
print(cricket_model)
print(summary(cricket_model))
cricket_pred <- predict(cricket_model, cricket_test)
print(cricket_pred)

CrossTable(cricket_test_labels, cricket_pred, prop.chisq=FALSE )

--------------------------------------------------------------------------

> print(cricket_model)

Call:
C5.0.default(x = cricket_train, y
 = as.factor(cricket_train_labels))

Classification Tree
Number of samples: 9 
Number of predictors: 4 

Tree size: 2 

Non-standard options: attempt to group attributes

> print(summary(cricket_model))

Call:
C5.0.default(x = cricket_train, y
 = as.factor(cricket_train_labels))


C5.0 [Release 2.07 GPL Edition]         Wed Oct 08 11:18:10 2025
-------------------------------

Class specified by attribute `outcome'

Read 9 cases (5 attributes) from undefined.data

Decision tree:

Outlook = Rainy: No (4/1)
Outlook in {Overcast,Sunny}: Yes (5/1)


Evaluation on training data (9 cases):

            Decision Tree   
          ----------------  
          Size      Errors  

             2    2(22.2%)   <<


           (a)   (b)    <-classified as
          ----  ----
             3     1    (a): class No
             1     4    (b): class Yes


        Attribute usage:

        100.00% Outlook


Time: 0.0 secs

> cricket_pred <- predict(cricket_model, cricket_test)
> print(cricket_pred)
[1] Yes No  Yes Yes Yes
Levels: No Yes
> CrossTable(cricket_test_labels, cricket_pred, prop.chisq=FALSE )

 
   Cell Contents
|-------------------------|
|                       N |
|           N / Row Total |
|           N / Col Total |
|         N / Table Total |
|-------------------------|

 
Total Observations in Table:  5 

 
                    | cricket_pred 
cricket_test_labels |        No |       Yes | Row Total | 
--------------------|-----------|-----------|-----------|
                 No |         0 |         1 |         1 | 
                    |     0.000 |     1.000 |     0.200 | 
                    |     0.000 |     0.250 |           | 
                    |     0.000 |     0.200 |           | 
--------------------|-----------|-----------|-----------|
                Yes |         1 |         3 |         4 | 
                    |     0.250 |     0.750 |     0.800 | 
                    |     1.000 |     0.750 |           | 
                    |     0.200 |     0.600 |           | 
--------------------|-----------|-----------|-----------|
       Column Total |         1 |         4 |         5 | 
                    |     0.200 |     0.800 |           | 
--------------------|-----------|-----------|-----------|

 
