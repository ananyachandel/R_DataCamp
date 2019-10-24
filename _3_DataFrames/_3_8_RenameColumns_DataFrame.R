# vectors for data frames
c1 <- 1:10
c2 <- letters[1:10]

charDf <- data.frame(col.name.1 = c1, col.name.2 = c2)

# create a new column newCol
# first method using dollar
charDf$newCol <- 2*charDf$col.name.1
print(charDf)
# second method using index
charDf[,'newCol.copy2'] <- charDf$newCol
print(charDf)

# Rename all the column names
colnames(charDf) <- c('1', '2', '3', '4')
print(charDf)

# Rename particular column
colnames(charDf)[1] <- 'New Col Name'
print(charDf)
