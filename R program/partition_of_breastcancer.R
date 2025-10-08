set.seed(100)
wisc_bc_data <- read.csv("C:/Users/Admin/Desktop/sneha -ds/wisc_bc_data.csv")
wisc_bc_data2 <- wisc_bc_data
wisc_bc_data2$id <- NULL
wisc_bc_data2$diagnosis <- NULL
wisc_bc_data_clusters <- kmeans(wisc_bc_data2, 2)
print(wisc_bc_data_clusters)

print(table(wisc_bc_data$diagnosis, wisc_bc_data_clusters$cluster))


------------------------------------------------------------------------------

> print(wisc_bc_data_clusters)
K-means clustering with 2 clusters of sizes 438, 131

Cluster means:
  radius_mean texture_mean perimeter_mean area_mean
1    12.55630     18.57037       81.12347  496.0619
2    19.37992     21.69458      128.23130 1185.9298
  smoothness_mean compactness_mean concavity_mean
1       0.0948845       0.09109982     0.06243776
2       0.1012946       0.14861298     0.17693947
  concave.points_mean symmetry_mean fractal_dimension_mean
1          0.03343254     0.1780580             0.06345402
2          0.10069878     0.1915397             0.06060290
  radius_se texture_se perimeter_se  area_se smoothness_se
1 0.3041909   1.215153     2.152881 23.78529   0.007173263
2 0.7428038   1.222538     5.250580 95.67817   0.006598687
  compactness_se concavity_se concave.points_se symmetry_se
1     0.02347469   0.02874551        0.01063632  0.02061358
2     0.03217669   0.04241977        0.01567398  0.02030397
  fractal_dimension_se radius_worst texture_worst
1          0.003747503     14.04390      24.70954
2          0.003953389     23.70947      28.91267
  perimeter_worst area_worst smoothness_worst
1        91.93751   619.6479        0.1299591
2       158.49618  1753.0229        0.1404247
  compactness_worst concavity_worst concave.points_worst
1         0.2233118       0.2192149           0.09132984
2         0.3577577       0.4493061           0.19243107
  symmetry_worst fractal_dimension_worst
1      0.2835537              0.08328194
2      0.3118817              0.08616550

Clustering vector:
  [1] 2 2 2 1 2 1 2 1 1 1 1 2 2 1 1 1 1 2 2 1 1 1 1 2 2 2 1 2 2
 [30] 2 2 1 2 2 2 2 1 1 1 1 1 1 2 1 1 2 1 1 1 1 1 1 1 2 1 1 2 1
 [59] 1 1 1 1 1 1 1 1 1 1 1 1 2 1 2 1 1 2 1 2 2 1 1 1 2 2 1 2 1
 [88] 2 1 1 1 1 1 1 1 2 1 1 1 1 1 1 1 1 1 1 1 1 2 1 1 1 1 1 1 1
[117] 1 1 2 2 1 2 2 1 1 1 1 2 1 2 1 1 1 1 2 1 1 1 1 1 1 2 1 1 1
[146] 1 1 1 1 1 1 1 1 1 1 1 2 1 1 1 1 2 2 1 2 1 1 2 2 1 1 1 1 1
[175] 1 1 1 1 1 1 2 2 2 1 1 1 2 1 1 1 1 1 1 1 1 1 1 2 2 1 1 2 2
[204] 1 1 1 1 2 1 1 2 1 2 1 1 1 1 1 2 2 1 1 1 1 1 1 1 1 1 1 2 1
[233] 1 2 1 1 2 2 1 2 1 1 1 1 2 1 1 1 1 1 2 1 2 2 2 1 2 1 2 1 2
[262] 2 2 1 2 2 1 1 1 1 1 1 2 1 2 1 1 2 1 1 2 1 2 1 1 1 1 1 1 1
[291] 1 1 1 1 1 1 1 1 1 1 2 1 2 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 1
[320] 1 1 2 1 2 1 1 1 1 1 1 1 1 1 1 1 2 1 2 1 2 1 1 1 2 1 1 1 1
[349] 1 1 1 1 2 1 1 1 1 1 1 1 1 1 1 1 1 2 2 1 2 2 1 1 2 2 1 1 1
[378] 1 1 1 1 1 1 1 1 1 1 1 1 2 1 1 2 2 1 1 1 1 1 1 2 1 1 1 1 1
[407] 1 1 2 1 1 1 1 1 1 1 1 2 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 2 1
[436] 1 1 1 1 1 1 2 1 1 2 1 2 1 1 2 1 2 1 1 1 1 1 1 1 1 2 2 1 1
[465] 1 1 1 1 2 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 1 1 1 2 2
[494] 1 1 1 1 1 2 2 1 1 1 2 1 1 1 1 1 1 1 1 1 1 1 1 2 2 1 1 1 2
[523] 1 1 1 1 1 1 1 1 1 1 1 2 1 2 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
[552] 1 1 1 1 1 1 1 1 1 1 1 1 2 2 2 1 2 1

Within cluster sum of squares by cluster:
[1] 28559677 49383423
 (between_SS / total_SS =  69.6 %)

Available components:

[1] "cluster"      "centers"      "totss"        "withinss"    
[5] "tot.withinss" "betweenss"    "size"         "iter"        
[9] "ifault"      
> print(table(wisc_bc_data$diagnosis, wisc_bc_data_clusters$cluster))
   
      1   2
  B 356   1
  M  82 130
