v <- c(1,2,3)
m <- matrix(1:10, nrow=2)
df <- mtcars

# creating a simple list with 3 different types of data structure
my.list <- list(v, m, df)
print(my.list)

# assigning names/ key to different type od data structurres such as vector, matrix, data frames
my.name.list <- list(sample_vec = v, my.matrix = m, sample.df = df)
print(my.name.list)

# getting the differnet DS from list using $
print(my.name.list$sample_vec)
print(my.name.list$sample.df)
print(my.name.list$my.matrix) # fetch actual D.S. type - here it's a matrix

# getting the differnet DS from list using []
print(my.name.list[1])
print(my.name.list['sample_vec']) # fetch values in list format
print(my.name.list[['sample_vec']]) # fetches actual D.S. i.e. in this case a vector

double.list <- c(my.name.list, my.name.list)
print(double.list)
print(str(my.name.list))