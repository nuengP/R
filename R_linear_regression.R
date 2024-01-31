# Correlation
cor(mtcars$mpg, mtcars$hp)

# Linear Regreesion
# mpg = f(hp)

lmfit <- lm(mpg ~ hp, data = mtcars)

# prediction
# lmfit$coefficients[[1]] + lmfit$coefficients[[2]]*hp
lmfit$coefficients[[1]] + lmfit$coefficients[[2]]*200

new_cars <- data.frame(
  hp = c(250, 320, 400, 410, 450)
)

# predict()
new_cars$hp_pred <- NULL

new_cars

summary(lmfit)

# Root Mean Squared Error (rmse)
# Multiple Linear Regression
# mpg = f(hp, wt, am)
# mpg = intercept + b0*hp + b1*wt + b2*am

lmFit_v2 <- lm(mpg ~ hp + wt + am, data = mtcars)

coefs <- coef(lmFit_v2)

coefs[[1]] + coefs[[2]]*hp + coefs[[3]]*wt + coefs[[4]]*am

# Build Full Model
lmFit_Full <- lm(mpg ~ ., data = mtcars)


mtcars$predicted <- predict(lmFit_Full)

rmse <- sqrt(mean((mtcars$predicted - mtcars$mpg) ** 2))

set.seed(42)
n <- nrow(mtcars)
id <- sample(1:n, size = n*0.7)
train_data <- mtcars[id, ]
test_data <- mtcars[-id, ]

# Train Model
model1 <- lm(mpg ~ hp + wt + am + disp, data = train_data)
p_train <- predict(model1)
rmse_train = sqrt(mean((train_data$mpg - p_train)**2))

# Test Model
p_test <- predict(model1, newdata = test_data)
rmse_test = sqrt(mean((test_data$mpg - p_test)**2))

cat("RMSE Train", rmse_train,"\nRMSE TEST", rmse_test)