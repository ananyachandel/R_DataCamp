# sample & apply function 

# sample : to fetch n random elements of a vector
random <- sample(x = 1:10, 1)
print(random)
random <- sample(1:10, 3)
print(random)

# apply
v <- 1:5
addrandom <- function(x){
  ran <- sample(1:100, 1)
  return(ran + x)
}

# lapply
result <- lapply(v, addrandom)
print(result)
print(is.list(result))

# sapply
result <- sapply(v, addrandom)
print(result)

times2 <- function(num){
  return(num*2)
}
print(v)
result <- sapply(v, times2)
print(result)

# anonymus function
v < 1:5
result <- sapply(v, function(num){num*2})

# multiple parameters for sapply/ lapply
add_choice <- function(num, choice){
  return(num+choice)
}
print(sapply(v, add_choice, choice=20021))