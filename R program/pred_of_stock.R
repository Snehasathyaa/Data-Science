economy <- read.csv("C:/Users/Admin/Desktop/sneha -ds/economy.csv")
economy_train <- economy[1:18,]
economy_test <- economy[19:24,]
economy_model <- lm(Stock_Index_Price ~ Interest_Rate + Unemployment_Rate,
data = economy_train)
print(economy_model)
print(summary(economy_model))
economy_pred <- predict(economy_model, economy_test)

print(economy_pred)


---------------------------------------------------------

 print(economy_model)

Call:
lm(formula = Stock_Index_Price ~ Interest_Rate + Unemployment_Rate, 
    data = economy_train)

Coefficients:
      (Intercept)      Interest_Rate  Unemployment_Rate  
            948.0              376.3             -108.1  

> print(summary(economy_model))

Call:
lm(formula = Stock_Index_Price ~ Interest_Rate + Unemployment_Rate, 
    data = economy_train)

Residuals:
   Min     1Q Median     3Q    Max 
-60.39 -27.94  -4.56  28.87  77.99 

Coefficients:
                  Estimate Std. Error t value Pr(>|t|)    
(Intercept)         948.04     584.69   1.621    0.126    
Interest_Rate       376.31      70.19   5.362 7.92e-05 ***
Unemployment_Rate  -108.08      77.99  -1.386    0.186    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 41.06 on 15 degrees of freedom
Multiple R-squared:  0.9445,    Adjusted R-squared:  0.9371 
F-statistic: 127.5 on 2 and 15 DF,  p-value: 3.843e-10

> economy_pred <- predict(economy_model, economy_test)
> print(economy_pred)
      19       20       21       22       23       24 
947.3085 947.3085 968.9243 936.5006 936.5006 947.3085 
