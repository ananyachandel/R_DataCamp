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

# run model

# interpret the model
print(summary(model))

# residuals
res <- residuals(model)
res <- as.data.frame(res)

head(res)

# plot residuals
ggplot(res, aes(res)) + geom_histogram(fill = 'blue', alpha = 0.5)
