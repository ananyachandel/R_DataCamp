c1 <- 1:10
c2 <- letters[1:10]

charDf <- data.frame(col.name.1 = c1, col.name.2 = c2)

# check missing data
print(is.na(mtcars))

# checking missing data as a whole (any)
print(any(is.na(mtcars)))

# checking missing data in a column (any)
print(any(is.na(mtcars$mpg)))

# replace NA with 0
charDf[is.na(charDf)] <- 0

# replace the NA value in mpg to mean value of mpg
mtcars$mpg[is.na(mtcars$mpg)] <- mean(mtcars$mpg)