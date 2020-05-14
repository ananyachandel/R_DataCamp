df <- read.csv('/Users/sobil/Documents/Certifications/DataScienceAndMachineLearningBootcampWithRUdemy/Notes/Machine Learning with R/student-mat.csv',sep = ';')
summary(df)

# check na's
any(is.na(df))

# check structure
str(df)

library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrplot)
library(corrgram)

# check correlation of only numeric continous variables
# grab number only columns
num.cols <- sapply(df,is.numeric)
#filter - co-related
cor.data <- cor(df[,num.cols])

print(cor.data)

# using corrplot
print(corrplot(cor.data, method = 'color'))

# using corrgram - also uses non numeric data
print(corrgram(df))

corrgram(df, order = TRUE, lower.panel = panel.shade, upper.panel = panel.pie, text.panel = panel.txt)

# 
print(ggplot(df, aes(x=G3)) + geom_histogram(bins=20, aplha=0.5, fill='blue'))

