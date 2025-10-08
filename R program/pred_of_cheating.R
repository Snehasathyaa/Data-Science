library(C50)
library(gmodels)person <- read.csv("C:/Users/Admin/Desktop/sneha -ds/person.csv")
person_train <- person[1:8,-5 ]
person_test <- person[9:10,-5 ]
person_train_labels = person[1:8, 5]
person_test_labels = person[9:10, 5]
person_model<-C5.0(person_train,as.factor(person_train_labels))
print(person_model)
print(summary(person_model))
person_pred <- predict(person_model, person_test)
print(person_pred)

CrossTable(person_test_labels, person_pred, prop.chisq=FALSE )



---------------------------------------------------------------------------------------------


> print(person_model)

Call:
C5.0.default(x = person_train, y
 = as.factor(person_train_labels))

Classification Tree
Number of samples: 8 
Number of predictors: 4 

Tree size: 1 

Non-standard options: attempt to group attributes

> print(summary(person_model))

Call:
C5.0.default(x = person_train, y
 = as.factor(person_train_labels))


C5.0 [Release 2.07 GPL Edition]         Wed Oct 08 11:08:11 2025
-------------------------------

Class specified by attribute `outcome'

Read 8 cases (5 attributes) from undefined.data

Decision tree:
 No (8/2)


Evaluation on training data (8 cases):

            Decision Tree   
          ----------------  
          Size      Errors  

             1    2(25.0%)   <<


           (a)   (b)    <-classified as
          ----  ----
             6          (a): class No
             2          (b): class Yes


Time: 0.0 secs

> person_pred <- predict(person_model, person_test)
> print(person_pred)
[1] No No
Levels: No Yes
> 
