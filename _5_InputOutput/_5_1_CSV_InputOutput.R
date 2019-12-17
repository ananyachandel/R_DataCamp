# CSV Files

# create a CSV file with mtcars data frame
write.csv(mtcars, file = './_5_InputOutput/mtcars.csv')

# read a csv file
ex <- read.csv('./_5_InputOutput/mtcars.csv')
print(head(ex))
print(ex)