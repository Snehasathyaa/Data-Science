
library(e1071)
symptoms = read.csv("C:/Users/Admin/Desktop/Sneha - DS/file/symptoms.csv")
symptoms_train = symptoms[,1:4]
symptoms_test = data.frame(Chills="Y",RunningNose="N",Headache="mild",
Fever="Y")
classifier_cl <- naiveBayes(symptoms_train,symptoms$HasFlu)
print(classifier_cl)
symptoms_test_pred <- predict(classifier_cl, symptoms_test)
cat("Prediction of Flu:\n")
print(symptoms_test_pred)

----------------------------------------------------------------------------------


Naive Bayes Classifier for Discrete Predictors

Call:
naiveBayes.default(x = symptoms_train, y = symptoms$HasFlu)

A-priori probabilities:
symptoms$HasFlu
    N     Y 
0.375 0.625 

Conditional probabilities:
               Chills
symptoms$HasFlu         N         Y
              N 0.6666667 0.3333333
              Y 0.4000000 0.6000000

               RunningNose
symptoms$HasFlu         N         Y
              N 0.6666667 0.3333333
              Y 0.2000000 0.8000000

               Headache
symptoms$HasFlu      mild        no    strong
              N 0.3333333 0.3333333 0.3333333
              Y 0.4000000 0.2000000 0.4000000

               Fever
symptoms$HasFlu         N         Y
              N 0.6666667 0.3333333
              Y 0.2000000 0.8000000

> symptoms_test_pred <- predict(classifier_cl, symptoms_test)
> cat("Prediction of Flu:\n")
Prediction of Flu:
> print(symptoms_test_pred)
[1] Y
Levels: N Y
