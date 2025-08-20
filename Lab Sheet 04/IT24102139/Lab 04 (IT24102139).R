getwd()
setwd("C:/Users/IT24102139/Desktop/IT24102139")


#Question1
branch_data <- read.table("Exercise.txt", header = TRUE, sep = ",")
head(branch_data)

#question2
str(branch_data)

#Question3
boxplot(branch_data$Sales_X1,
        main = "Boxplot of Sales",
        ylab = "Sales")


#Question4
fivenum(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)


#Question5
find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_value <- Q3 - Q1
  lower <- Q1 - 1.5 * IQR_value
  upper <- Q3 + 1.5 * IQR_value
  outliers <- x[x < lower | x > upper]
  return(outliers)
}

find_outliers(branch_data$Years_X3)