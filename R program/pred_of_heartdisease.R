heart <- read.csv("C:/Users/Admin/Desktop/sneha -ds/heart.csv")
heart_train <- heart[1:400,]
heart_test <- heart[401:498,]
heart_model <- lm(heart.disease ~ biking + smoking, data = heart_train)
print(heart_model)
print(summary(heart_model))
heart_pred <- predict(heart_model, heart_test)
print(heart_pred)
