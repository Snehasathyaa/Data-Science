economy <- read.csv("C:/Users/Admin/Desktop/sneha -ds/economy.csv")
economy_train <- economy[1:18,]
economy_test <- economy[19:24,]
economy_model <- lm(Stock_Index_Price ~ Interest_Rate + Unemployment_Rate,
data = economy_train)
print(economy_model)
print(summary(economy_model))
economy_pred <- predict(economy_model, economy_test)
print(economy_pred)