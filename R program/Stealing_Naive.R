library(e1071)
cars = read.csv("C:/Users/Admin/Desktop/Sneha - DS/file/cars.csv")
cars_train = cars[,2:4]
cars_train_labels = cars[,5]
cars_test = data.frame(Colour="red",Type="SUV",Origin="domestic")
classifier_cl <- naiveBayes(cars_train,cars_train_labels)
print(classifier_cl)
cars_test_pred <- predict(classifier_cl, cars_test)
cat("Prediction of Stolen Status:\n")
print(cars_test_pred)

-----------------------------------------------------------------------


Naive Bayes Classifier for Discrete Predictors

Call:
naiveBayes.default(x = cars_train, y = cars_train_labels)

A-priori probabilities:
cars_train_labels
 no yes 
0.5 0.5 

Conditional probabilities:
                 Colour
cars_train_labels red yellow
              no  0.4    0.6
              yes 0.6    0.4

                 Type
cars_train_labels sports SUV
              no     0.4 0.6
              yes    0.8 0.2

                 Origin
cars_train_labels domestic imported
              no       0.6      0.4
              yes      0.4      0.6

> cars_test_pred <- predict(classifier_cl, cars_test)
> cat("Prediction of Stolen Status:\n")
Prediction of Stolen Status:
> print(cars_test_pred)
[1] no
Levels: no yes
