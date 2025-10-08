insurance <- read.csv("C:/Users/Admin/Desktop/sneha -ds/insurance.csv")
insurance_train <- insurance[1:1000,]
insurance_test <- insurance[1001:1338,]
25
insurance_model <- lm(expenses ~ age + sex + bmi + children + smoker +
region, data = insurance_train)
print(insurance_model)
print(summary(insurance_model))
insurance_pred <- predict(insurance_model, insurance_test)
print(insurance_pred)
