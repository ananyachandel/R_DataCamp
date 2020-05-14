df <- read.csv('/Users/sobil/Documents/Certifications/DataScienceAndMachineLearningBootcampWithRUdemy/Notes/Machine Learning with R/student-mat.csv',sep = ';')

# install.packages("caTools")

# split data into train and train set
library(caTools)
library(ggplot2)

# set a Seed
set.seed(101)
# split up sample
sample <- sample.split(df$G3, SplitRatio = 0.7)

# 70% of data --> train
train <- subset(df, sample == TRUE)
# 30% of data --> test
test <- subset(df, sample == FALSE)

# train and build a model
model <- lm(G3 ~. , data = train)

par(mfrow = c(2,2))
plot(model)

# prediction
G3.predict <- predict(model, test)

results <- cbind(G3.predict, test$G3)
colnames(results) <- c('predicted', 'actuals')
results <- as.data.frame(results)
head(results)


# handle negative values
to_zero <- function(val) {
  if(val < 0){
    return(0)
  } else {
    return(val)
  }
}

# apply on the predicted
results$predicted <- sapply(results$predicted, to_zero)

mse <- mean((results$actuals - results$predicted)^2)
mse

# RMSE
rmse <- mse^0.5
rmse

# SSE
SSE <- sum((results$predicted - results$actuals)^2)
SST <- sum((mean(df$G3) - results$actuals)^2)

# R-squared value
R2 <- 1 - SSE/SST
R2
