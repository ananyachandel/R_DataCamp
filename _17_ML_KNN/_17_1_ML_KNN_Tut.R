remove(list = ls())

# get data
library(ISLR)
str(Caravan)

# summary
summary(Caravan)


# clean data
any(is.na(Caravan))


# scaling the data
var(Caravan[,1])
var(Caravan[,2])
# quite different variance
#thus scaling

purchase <- Caravan[,86]
# standardize
stand.Caravan <- scale(Caravan[,-86])

# now checking varaince 
var(stand.Caravan[,1])
var(stand.Caravan[,2])


# train test split
test.index <- 1:1000
test.data <- stand.Caravan[test.index,]
test.purchase <- purchase[test.index]

# train
train.data <- stand.Caravan[-test.index,]
train.purchase <- purchase[-test.index]



# Model KNN
library(class)
set.seed(101)
predicct.purchase <- knn(train.data, test.data, train.purchase, k =1)
head(predicct.purchase)

# Evaluate model
misclass.error <- mean(test.purchase != predicct.purchase)
misclass.error


# chosing k value
predicct.purchase <- knn(train.data, test.data, train.purchase, k =3)
head(predicct.purchase)

# Evaluate model
misclass.error <- mean(test.purchase != predicct.purchase)
misclass.error


predicct.purchase <- knn(train.data, test.data, train.purchase, k =5)
head(predicct.purchase)

# Evaluate model
misclass.error <- mean(test.purchase != predicct.purchase)
misclass.error



# loop
predicted.purchase <- NULL
error.rate <- NULL

for(i in 1:20){
  set.seed(101)
  predicted.purchase <- knn(train.data, test.data, train.purchase, k =i)
  error.rate[i] <- mean(test.purchase != predicted.purchase)
}
error.rate


# visualization of error rate
library(ggplot2)
k.values <- 1:20
error.df <- data.frame(error.rate, k.values)
ggplot(error.df, aes(k.values, error.rate)) + geom_point() + geom_line(lty = "dotted", color = "red")

# thus k = 9 is ideal