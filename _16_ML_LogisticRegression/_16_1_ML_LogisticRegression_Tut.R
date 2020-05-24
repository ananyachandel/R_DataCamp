remove(list = ls())
dev.off()

tn.train <- read.csv('/Users/sobil/Documents/Certifications/DataScienceAndMachineLearningBootcampWithRUdemy/Notes/Machine Learning with R/titanic_train.csv')
head(tn.train)
str(tn.train)

library(Amelia)

# check missing data in the df
Amelia::missmap(tn.train, main = 'Missing map', col = c('yellow', 'black'), legend = FALSE )

library(ggplot2)
#visualizations
ggplot(tn.train, aes(Survived)) + geom_bar()
ggplot(tn.train, aes(Pclass)) + geom_bar(aes(fill = factor(Pclass)))
ggplot(tn.train, aes(Sex)) + geom_bar(aes(fill = factor(Sex)))
ggplot(tn.train, aes(Age)) + geom_histogram(bins = 20, alpha = 0.5, fill = 'blue')
ggplot(tn.train, aes(SibSp)) + geom_bar()
ggplot(tn.train, aes(Fare)) + geom_histogram(fill = 'orange', color = 'black', aplha = 0.5)

# handling NA's
# 1) either drop all the rows
# 2) We will fill the data using Pclass

pl <- ggplot(tn.train, aes(Pclass, Age))
pl <- pl + geom_boxplot(aes(group = Pclass, fill = factor(Pclass), alpha = 0.4))
pl <- pl + scale_y_continuous(breaks = seq(min(0), max(80), by = 2))  
pl + theme_bw()

# can check age per Pclass - avg age is smaller as Pclass increases

# imputation of age based on class
age_impute <- function(age, Pclass) {
  out <- age
  for (i in 1:length(age)) {
    if (is.na(age[i])) {
      if (Pclass[i] == 1) {
        out[i] <- 37
      }else if(Pclass[i] == 2){
        out[i] <- 29
      }else{
        out[i] <- 24
      }
    } else{
      out[i] <- age[i]
    }
  }
  return(out)
}

age.fixed <- age_impute(tn.train$Age, tn.train$Pclass)
tn.train$Age <- age.fixed 
Amelia::missmap(tn.train, main = 'Imputation check', col = c('yellow', 'black'), legend = FALSE )



# checking str
str(tn.train)
# removing features using dplyr
library(dplyr)
tn.train <- dplyr::select(tn.train, -PassengerId, -Name, -Ticket, -Cabin)

# checking str after removal
head(tn.train)
str(tn.train)

# changing few params to factors
tn.train$Survived <- as.factor(tn.train$Survived)
tn.train$Pclass <- as.factor(tn.train$Pclass)
tn.train$Parch <- as.factor(tn.train$Parch)
tn.train$SibSp <- as.factor(tn.train$SibSp)

# checking str
str(tn.train)




# training the model - to detect the Survived on titanic
l.model <- glm(formula = Survived ~ ., family = binomial(link = 'logit'), data = tn.train)
# summary
summary(l.model)



library(caTools)
set.seed(101)
split <- sample.split(tn.train$Survived, SplitRatio = 0.7)
fin.train <- subset(tn.train, split == TRUE)
fin.test <- subset(tn.train, split == FALSE)

fin.l.model <- glm(Survived ~ . , family = binomial(link = 'logit'), data = fin.train)
fitted.prob <- predict(fin.l.model, fin.test, type = 'response')
fitted.result <- ifelse(fitted.prob > 0.5, 1, 0)
misClassError <- mean(fitted.result != fin.test$Survived)
1 - misClassError

# confusion matrix
table(fin.test$Survived, fitted.prob > 0.5)








  