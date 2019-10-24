# vectors for data frames
c1 <- 1:10
c2 <- letters[1:10]

charDf <- data.frame(col.name.1 = c1, col.name.2 = c2)

# get a particular cell with column number
print(charDf[[5,2]])

# get a particular cell with column name
print(charDf[[5, "col.name.2"]])

# assigning a new value to column 1 rwo 2
charDf[[2,"col.name.1"]] <- 999

print(charDf)