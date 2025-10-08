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