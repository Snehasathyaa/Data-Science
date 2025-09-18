food = read.csv("C:/Users/Admin/Desktop/Sneha - Ds/file/food.csv")
tomato=data.frame(ingredient="tomato",sweetness=6,crunchiness=4)
food1=food[,2:3]
tomato1=tomato[,2:3]
k <- as.numeric(readline(prompt = "Enter the value of k:"))
cat("Enter the value of k:")
k=scan("stdin", integer(), n=1)
library(class)
pred=knn(food1,tomato1,food$FoodType,k)
cat("Predicted Food Type of Tomato:\n")
print(pred)


--------------------------------------------------------------

Enter the value of k:3
> cat("Enter the value of k:")
Enter the value of k:> library(class)
> pred=knn(food1,tomato1,food$FoodType,k)
> cat("Predicted Food Type of Tomato:\n")
Predicted Food Type of Tomato:
> print(pred)
[1] fruit
Levels: fruit protein vegetable
