set.seed(100)
wisc_bc_data <- read.csv("C:/Users/Admin/Desktop/sneha -ds/wisc_bc_data.csv")
wisc_bc_data2 <- wisc_bc_data
wisc_bc_data2$id <- NULL
wisc_bc_data2$diagnosis <- NULL
wisc_bc_data_clusters <- kmeans(wisc_bc_data2, 2)
print(wisc_bc_data_clusters)
print(table(wisc_bc_data$diagnosis, wisc_bc_data_clusters$cluster))