c1 <- 1:10
c2 <- letters[1:10]

charDf <- data.frame(col.name.1 = c1, col.name.2 = c2)

# Selecting multiple rows

# 1st method using slicing
charDf.slicing <- charDf[1:5,]
print(charDf.slicing)

# 2nd method using head
charDf.head3 <- head(charDf,3)
print(charDf.head3)

# Ingnore all row but not 2nd row
charDf.except2 <- charDf[c(-2,-4),]
print(charDf.except2)

# conditional selection of rows
mtcars.mpgGreater20<- mtcars[ mtcars$mpg > 20,]
print(mtcars.mpgGreater20)

# conditonal selection on rows & columns
mtcars.condition2 <- mtcars[(mtcars$mpg > 20) & (mtcars$cyl == 6), c('mpg', 'cyl','hp')]
print(mtcars.condition2)

# subset function
mtcars.subsetUse <- subset(mtcars, mpg > 20 & cyl == 6, c('mpg', 'cyl','hp'))
print(mtcars.subsetUse)

# selcting multiple columns
mtcars.mutliples <- mtcars[,c('mpg', 'cyl', 'disp')]
print(mtcars.mutliples)

