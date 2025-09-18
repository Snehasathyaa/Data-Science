library(class)
library(gmodels)
wbcd = read.csv("C:/Users/Admin/Desktop/Sneha - DS/file/wisc_bc_data.csv")
normalize <- function(x)
{
return ((x - min(x)) / (max(x) - min(x)))
}
wbcd_n = as.data.frame(lapply(wbcd[3:31], normalize))
wbcd_train = wbcd_n[1:469, ]
wbcd_test = wbcd_n[470:569, ]
wbcd_train_labels = wbcd[1:469, 2]
wbcd_test_labels = wbcd[470:569, 2]
wbcd_test_pred = knn(wbcd_train, wbcd_test, wbcd_train_labels,21)
print(wbcd_test_pred)
CrossTable(x = wbcd_test_labels, y = wbcd_test_pred, prop.chisq=FALSE)

----------------------------------------------------------------------------


> print(wbcd_test_pred)
  [1] B B B B B B B B B B M B B B B B B B M B B B B M B B B B B M M B M B M B B
 [38] B B B M B B M B B B M M B B B M B B B B B B B B B B B M B M M B B B B B B
 [75] B B B B B B B B B B B B B B B B B B B M M M M M M B
Levels: B M
> CrossTable(x = wbcd_test_labels, y = wbcd_test_pred, prop.chisq=FALSE)

 
   Cell Contents
|-------------------------|
|                       N |
|           N / Row Total |
|           N / Col Total |
|         N / Table Total |
|-------------------------|

 
Total Observations in Table:  100 

 
                 | wbcd_test_pred 
wbcd_test_labels |         B |         M | Row Total | 
-----------------|-----------|-----------|-----------|
               B |        77 |         0 |        77 | 
                 |     1.000 |     0.000 |     0.770 | 
                 |     0.975 |     0.000 |           | 
                 |     0.770 |     0.000 |           | 
-----------------|-----------|-----------|-----------|
               M |         2 |        21 |        23 | 
                 |     0.087 |     0.913 |     0.230 | 
                 |     0.025 |     1.000 |           | 
                 |     0.020 |     0.210 |           | 
-----------------|-----------|-----------|-----------|
    Column Total |        79 |        21 |       100 | 
                 |     0.790 |     0.210 |           | 
-----------------|-----------|-----------|-----------|

 
