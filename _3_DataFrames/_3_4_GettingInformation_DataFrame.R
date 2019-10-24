# vectors for data frames
c1 <- 1:10
c2 <- letters[1:10]

charDf <- data.frame(col.name.1 = c1, col.name.2 = c2)

# number of columns
print(nrow(charDf))

# number of rows
print(ncol(charDf))

# get column names
print(colnames(charDf))

# get row names
print(rownames(charDf))

# get structure
print(str(charDf))

# get summary
print(summary(charDf))