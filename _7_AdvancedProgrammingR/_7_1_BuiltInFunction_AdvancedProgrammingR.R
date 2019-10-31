#create a sequence seq()
seq.1to10by2 <- seq(0,10, by=2)
print(seq.1to10by2)
print(is.vector(seq.1to10by2))

# sort()
v <- c(1, 5, 2, 100, 99, 12, 9, 9, 11, 90)
v.sort.asen <- sort(v)
v.sort.desc <- sort(v, decreasing = T)
print(v.sort.asen)
print(v.sort.desc)
v.char <- c('a', 'd', 'b', 'z', 'e', 'A')
print(sort(v.char))

# rev()
print(rev(v.char))
print(rev(mtcars))

# str()
str(v.char)
str(mtcars)

# summary
summary(mtcars)

# append()
v1 <- 1:10
v2 <- 20:30
v3 <- append(v1, v2)
print(v3)
v3 <- append(v1, v2, 5)
print(v3)

# checking the data type : is.
v <- 1:3
print(is.vector(v))
print(is.data.frame(v))

# convert the data type : as.
list.v <- as.list(v)
matrix.v <- as.matrix(v)
print(list.v)
print(matrix.v)
