# vectors for data frames
c1 <- 1:10
c2 <- letters[1:10]

charDf <- data.frame(col.name.1 = c1, col.name.2 = c2)

# fetch data frame row
print(charDf[1,])

# referncing columns
print(head(mtcars))

# fetch columns in vector
# First method
print(mtcars$mpg)
# Second method
print(mtcars[,"mpg"])
# Third method
print(mtcars[,1])
# Fourth method
print(mtcars[["mpg"]])

# fetch columns in data frames
# first method
print(mtcars["mpg"])
# second method
print(mtcars[1])

# fetch multiple columns
print(mtcars[c('mpg', 'cyl')])

