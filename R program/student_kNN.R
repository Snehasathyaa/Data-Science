library(class)
survey=read.csv("C:/Users/Admin/Desktop/Sneha - Ds/file/survey.csv")
student=data.frame(X=5,Y=7)
survey1=survey[,1:2]
pred=knn(survey1,student,survey$Z,k=3)
cat("Predicted Classification of Student:\n")
print(pred)



---------------------------------------------------

Predicted Classification of Student:
> print(pred)
[1] Outstanding
Levels: Good Outstanding
