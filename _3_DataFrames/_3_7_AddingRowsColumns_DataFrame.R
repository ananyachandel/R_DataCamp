# vectors for data frames
c1 <- 1:10
c2 <- letters[1:10]

charDf <- data.frame(col.name.1 = c1, col.name.2 = c2)

newDf2 <- data.frame(col.name.1 = 2000, col.name.2 = 'new')

# row bind : add the columns by row
bindCharDf <- rbind(charDf, newDf2)
print(bindCharDf)

# create a new column newCol
# first method using dollar
charDf$newCol <- 2*charDf$col.name.1
print(charDf)
# second method using index
charDf[,'newCol.copy2'] <- charDf$newCol
print(charDf)


