# My new R script
#Step 1
my_data <- read.csv("HSE103_DataWorkshop_File1.csv")
View("HSE103_DataWorkshop_File1.csv")
hist(na.omit(my_data$x), 
              main = "Histogram of X", 
              xlab = "Values", 
              col = "lightblue")
#Step 2