
housing <- read.csv(file="housing_v2.csv", header=TRUE, sep=",")

# converting appropriate variables to factors  
housing <- within(housing, {
   view <- factor(view)
   backyard <- factor(backyard)
})

# number of columns
ncol(housing)

# number of rows
nrow(housing)

# Scatterplot of Price vs. Living Area
plot(housing$sqft_living, housing$price, 
     main = "Scatterplot of Price vs. Living Area",
     xlab = "Living Area", ylab = "Price",
     col="green", 
     pch = 19, frame = FALSE)

# Scatterplot of Price vs. Age
plot(housing$age, housing$price, 
     main = "Scatterplot of Price vs. Age",
     xlab = "Age", ylab = "Price",
     col="purple", 
     pch = 19, frame = FALSE)

myvars <- c("price","sqft_living", "age")
housing_subset <- housing[myvars]

# Print the correlation matrix
print("cor")
corr_matrix <- cor(housing_subset, method = "pearson")
round(corr_matrix, 4)

# Create the first order regression model and print the statistics
model1 <- lm(price ~ sqft_living + sqft_above + age + bathrooms + view, data=housing)
summary(model1)

fitted_values <- fitted.values(model1)
residuals <- residuals(model1)
plot(fitted_values, residuals, 
     main = "Residuals against Fitted Values",
     xlab = "Fitted Values", ylab = "Residuals",
     col="red", 
     pch = 19, frame = FALSE)
abline(0,0)

qqnorm(residuals, pch = 19, col="red", frame = FALSE)
qqline(residuals, col = "blue", lwd = 2)

# Predicted price for a home that has 2150 sqft living area, 1050 sqft upper level living area,
# is 15 years old, has 3 bathrooms, and backs out to road:
newdata <- data.frame(sqft_living=2150, sqft_above=1050, age=15, bathrooms=3, view='0')

print("prediction interval")
prediction_pred_int <- predict(model1, newdata, interval="predict", level=0.90) 
round(prediction_pred_int, 4)

print("confidence interval")
prediction_conf_int <- predict(model1, newdata, interval="confidence", level=0.90) 
round(prediction_conf_int, 4)

# predicted price for a home that has 4250 sqft living area, 2100 sqft upper level living area,
# is 5 years old, has 5 bathrooms, and backs out to a lake:
newdata <- data.frame(sqft_living=4250, sqft_above=2100, age=5, bathrooms=5, view='2')

print("prediction interval")
prediction_pred_int <- predict(model1, newdata, interval="predict", level=0.90) 
round(prediction_pred_int, 4)

print("confidence interval")
prediction_conf_int <- predict(model1, newdata, interval="confidence", level=0.90)
round(prediction_conf_int, 4)

# Scatterplot of Price vs. Average School Rating
plot(housing$school_rating, housing$price, 
     main = "Scatterplot of Price vs. Average School Rating",
     xlab = "School rating", ylab = "Price",
     col="green", 
     pch = 19, frame = FALSE)

# Scatterplot of Price vs. Crime
plot(housing$crime, housing$price, 
     main = "Scatterplot of Price vs. Crime",
     xlab = "Crime", ylab = "Price",
     col="purple", 
     pch = 19, frame = FALSE)

# Create the second order regression model and print the statistics
model2 <- lm(price ~ school_rating + crime + school_rating:crime + I(school_rating^2) + I(crime^2), data=housing)
summary(model2)

fitted_values <- fitted.values(model2)
residuals <- residuals(model2)
plot(fitted_values, residuals, 
     main = "Residuals against Fitted Values",
     xlab = "Fitted Values", ylab = "Residuals",
     col="red", 
     pch = 19, frame = FALSE)
abline(0,0)

qqnorm(residuals, pch = 19, col="red", frame = FALSE)
qqline(residuals, col = "blue", lwd = 2)

# Predicted price for a home in an area with average school rating of 9.80 and 
# a crime rate of 81.02 per 100,000 individuals:
newdata <- data.frame(school_rating=9.80, crime=81.02)

print("prediction interval")
prediction_pred_int <- predict(model2, newdata, interval="predict", level=0.90) 
round(prediction_pred_int, 4)

print("confidence interval")
prediction_conf_int <- predict(model2, newdata, interval="confidence", level=0.90) 
round(prediction_conf_int, 4)

# Predicted price for a home in an area with average school rating of 4.28 and 
# a crime rate of 215.50 per 100,000 individuals
newdata <- data.frame(school_rating=4.28, crime=215.50)

print("prediction interval")
prediction_pred_int <- predict(model2, newdata, interval="predict", level=0.90) 
round(prediction_pred_int, 4)

print("confidence interval")
prediction_conf_int <- predict(model2, newdata, interval="confidence", level=0.90) 
round(prediction_conf_int, 4)

# Create the first order regression model and print the statistics
model3 <- lm(price ~ school_rating + crime + school_rating:crime, data=housing)
summary(model3)

# Perform the F-test
anova(model2, model3)
