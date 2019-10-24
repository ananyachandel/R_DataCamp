# vectors for data frames
c1 <- 1:10
c2 <- letters[1:10]

charDf <- data.frame(col.name.1 = c1, col.name.2 = c2)

# Export CSV
write.csv(charDf, file = './_3_DataFrames/_3_3_charDataFrame.csv')

# Import CSV
readCsv <- read.csv('./_3_DataFrames/_3_3_charDataFrame.csv')
print(readCsv)

