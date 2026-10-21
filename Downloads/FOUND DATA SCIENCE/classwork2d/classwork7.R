# My new R script
#Step 1
my_data <- read.csv("HSE103_DataWorkshop_File1.csv")
View("HSE103_DataWorkshop_File1.csv")
hist(na.omit(my_data$x), 
              main = "Histogram of X", 
              xlab = "Values", 
              col = "lightblue")
#Step 2
long_data <- my_data %>%
  pivot_longer(
    cols = C1:C8,
    names_to = "Groups",
    values_to = "y",
    values_drop_na = TRUE) %>% # Automatically drops NA in the 'y' column
  mutate(Groups = as.factor(Groups)) %>%
  drop_na(x) # Drops rows where 'x' is NA
long_data

#Step3
ggplot(long_data, aes(x = Groups, y = y, fill = Groups)) +
  geom_boxplot(alpha = 0.8) +
  geom_jitter(width = 0.3, alpha = 0.4) + # Optional: shows individual data points
  labs(
    title = "Distribution of Values across Groups",
    x = "Group Category",
    y = "Value (y)") +
  theme_minimal() +
  theme(legend.position = "bottom")

