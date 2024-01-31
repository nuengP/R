# Logistic Regression
str(mtcars)

# change am to factor
mtcars$am <- factor(mtcars$am,
                    levels = c(0,1),
                    labels = c("Auto","Manual"))

set.seed(42)
n <- nrow(mtcars)
id <- sample(1:n, size = n*0.7)
train_data <- mtcars[id, ]
test_data <- mtcars[-id, ]


# train_data
logit_model <- glm(am ~ mpg, data = train_data, family = "binomial")
p_train <- predict(logit_model, type = "response") ##prob for 0 1
train_data$pred <- ifelse(p_train >= 0.5, "Manual","Auto")
accuracy_train <- mean(train_data$pred == train_data$am)

# test_data
p_test <- predict(logit_model, newdata = test_data , type = "response") ##prob for 0 1
test_data$pred <- ifelse(p_test >= 0.5, "Manual","Auto")
accuracy_test <- mean(test_data$pred == test_data$am)


