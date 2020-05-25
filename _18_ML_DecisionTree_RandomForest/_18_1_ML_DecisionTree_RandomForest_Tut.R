remove(list = ls())
library(rpart)

# get data
str(kyphosis)
head(kyphosis)
table(kyphosis$Kyphosis)

# model
tree <- rpart(Kyphosis ~ ., method = 'class', data = kyphosis)

# examine/ evaluate
printcp(tree)
plot(tree, uniform = TRUE)
text(tree, use.n = TRUE, all = TRUE)

library(rpart.plot)
prp(tree)
rpart.plot(tree)



# random forest
library(randomForest)
rf.model <- randomForest(Kyphosis~., kyphosis)
rf.model
rf.model$ntree
rf.model$confusion
