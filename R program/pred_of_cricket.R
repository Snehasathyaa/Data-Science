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