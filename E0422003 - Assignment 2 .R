
library(readr)
library(dplyr)
library(ggplot2)

file_path <- "/Users/devasenasenthil/Downloads/heart 2.csv"   

df <- read_csv(file_path, show_col_types = FALSE)

col <- "age"
mean_val <- mean(df[[col]], na.rm = TRUE)
median_val <- median(df[[col]], na.rm = TRUE)
variance_val <- var(df[[col]], na.rm = TRUE)

cat("Column:", col, "\n")
cat("Mean:", round(mean_val, 2), "\n")
cat("Median:", round(median_val, 2), "\n")
cat("Variance:", round(variance_val, 2), "\n")

p <- ggplot(df, aes(x = as.factor(sex))) +
  geom_bar(fill = "steelblue") +
  labs(title = "Bar Chart of Sex", x = "Sex (0=Female, 1=Male)", y = "Count") +
  theme_minimal()

print(p)

ggsave("/Users/devasenasenthil/Downloads/bar_chart.png", plot = p, width = 6, height = 4, dpi = 150)


