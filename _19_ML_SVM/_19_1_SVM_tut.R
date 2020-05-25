remove(list = ls())

# get data
library(ISLR)
head(iris)

library(e1071)

# model
model <- svm(Species ~., data = iris)
model
summary(model)

# eval
pred.values <- predict(model, iris[1:4])
table(pred.values, iris[,5])


# tunning the model
tune.result <- tune(svm, train.x = iris[1:4], train.y = iris[,5], kernel = 'radial', ranges = list(cost = c(0.5, 1, 1.5), gamma = c(0.1, 0.5, 0.7)))
summary(tune.result)

# cost = 1
# gamma = 0.5

tuned.svm <- svm(Species ~ . , data = iris, kernel = "radial", cost = 1, gamma = 0.5)
summary(tuned.svm)
