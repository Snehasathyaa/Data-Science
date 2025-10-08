library(C50)
library(gmodels)
credit <- read.csv("credit.csv")
credit_train <- credit[1:900,-17 ]
credit_test <- credit[901:1000,-17 ]
credit_train_labels = credit[1:900, 17]
credit_test_labels = credit[901:1000, 17]
credit_model <- C5.0(credit_train, as.factor(credit_train_labels))
print(credit_model)
print(summary(credit_model))
credit_pred <- predict(credit_model, credit_test)
print(credit_pred)
CrossTable(credit_test_labels, credit_pred, prop.chisq=FALSE )