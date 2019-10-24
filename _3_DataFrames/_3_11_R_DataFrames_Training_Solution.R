print("Ex 1: Recreate the following dataframe by creating vectors and using the data.frame function:")
writeLines("	Age	Weight	Sex
Sam	22	150	M
Frank	25	165	M
Amy	26	120	F
")
Name <- c("Sam", "Frank", "Amy")
Age <- c(22, 25, 26)
Weight <- c(150, 165, 120)
Sex <- c('M', 'M', 'F')
people <- data.frame(row.names = Name, Age = Age, Weight = Weight, Sex = Sex) # can also use row.names(people) <- Name in next line
print("Ans 1 : ")
print(people)

print("Ex 2: Check if mtcars is a dataframe using is.data.frame()")
print(is.data.frame(mtcars))

print("Ex 3: Use as.data.frame() to convert a matrix into a dataframe:")
print("mat <- matrix(1:25,nrow = 5)")
mat <- matrix(1:25,nrow = 5)
df.fromMatrix <- as.data.frame(mat)
print(df.fromMatrix)

print("Ex 4: Set the built-in data frame mtcars as a variable df. We'll use this df variable for the rest of the exercises.")
print("df <- mtcars")
df <- mtcars

print("Ex 5: Display the first 6 rows of df")
print(head(df, 6))

print("Ex 6: What is the average mpg value for all the cars?")
print(mean(df$mpg))

print("Ex 7: Select the rows where all cars have 6 cylinders (cyl column)")
df.cyl6 <- subset(df, cyl == 6)
print(df.cyl6)

print("Ex 8: Select the columns am,gear, and carb.")
print(df[,c('am', 'gear', 'carb')])

print("Ex 9: Create a new column called performance, which is calculated by hp/wt.")
print("IN : head(df)")
df$performance <- df$hp/df$wt
print(head(df))

print("Ex 10: Your performance column will have several decimal place precision. Figure out how to use round() (check help(round)) to reduce this accuracy to only 2 decimal places.")
print("IN : head(df)")
df$performance <- round(df$performance, 2)
print(head(df))

print("Ex 11: What is the average mpg for cars that have more than 100 hp AND a wt value of more than 2.5.")
df.selectionMpg100Wt2 <- df[ (df$hp > 100) & (df$wt > 2.5),]
df.avgMpg100Wt2 <- mean(df.selectionMpg100Wt2$mpg)
print(df.avgMpg100Wt2)

print("Ex 12: What is the mpg of the Hornet Sportabout?")
print(df['Hornet Sportabout', 'mpg' ])
