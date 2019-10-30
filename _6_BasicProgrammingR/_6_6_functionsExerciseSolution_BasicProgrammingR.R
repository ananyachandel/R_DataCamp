writeLines('
EXAMPLE 1: Create a function that takes in a name as a string argument, and prints out "Hello name"
')

print.helloName <- function(name){
  print(paste("Hello", name))
}
print.helloName('Sam')

writeLines('
EXAMPLE 2: Create a function that takes in a name as a string argument and returns a string of the form - "Hello name"
')
return.helloName <- function(name){
  return(paste("Hello", name))
}
print(return.helloName('Sam'))

writeLines('
Ex 1: Create a function that will return the product of two integers.
')
product <- function(int1 , int2){
  return(int1 * int2)
}
print(paste('product of 2 * 30 is:', product(2, 30)))

writeLines('
Ex 2: Create a function that accepts two arguments, an integer and a vector of integers. It returns TRUE if the integer is present in the vector, otherwise it returns FALSE. Make sure you pay careful attention to your placement of the return(FALSE) line in your function!           
num_check(2,c(1,2,3))
')
num_check <- function(int, vector){
  result <- int %in% vector
  return(result)
}
print(num_check(2, c(1,2,3)))

writeLines('
Ex 3: Create a function that accepts two arguments, an integer and a vector of integers. It returns the count of the number of occurences of the integer in the input vector.
num_count(2,c(1,1,2,2,3,3))
num_count(1,c(1,1,2,2,3,1,4,5,5,2,2,1,3))
')
num_count <- function(int, vec){
  result <- 0
  for(element in vec){
    if(element == int){
      result <- result + 1
    }
  }
  return(result)
}
print(num_count(2,c(1,1,2,2,3,3)))
print(num_count(1,c(1,1,2,2,3,1,4,5,5,2,2,1,3)))

writeLines('Ex 4: We want to ship bars of aluminum. We will create a function that accepts an integer representing the requested kilograms of aluminum for the package to be shipped. To fullfill these order, we have small bars (1 kilogram each) and big bars (5 kilograms each). Return the least number of bars needed.

For example, a load of 6 kg requires a minimum of two bars (1 5kg bars and 1 1kg bars). A load of 17 kg requires a minimum of 5 bars (3 5kg bars and 2 1kg bars).
bar_count(6)
bar_count(17)
')

bar_count <- function(int){
  result <- (int- (int %% 5))/5 + (int %% 5)
  return(result)
}
print(bar_count(6))
print(bar_count(17))

writeLines('
Ex 5: Create a function that accepts 3 integer values and returns their sum. However, if an integer value is evenly divisible by 3, then it does not count towards the sum. Return zero if all numbers are evenly divisible by 3. Hint: You may want to use the append() function.
summer(7,2,3)
summer(3,6,9)
')

summer <- function(int1, int2, int3){
  sm <- 0
  if(int1 %% 3 != 0){
    sm <- sm + int1
  }
  if(int2 %% 3 != 0){
    sm <- sm + int2
  }
  if(int3 %% 3 != 0){
    sm <- sm + int3
  }
  return(sm)
}

print(summer(7,2,3))
print(summer(3,6,9))

writeLines('
Ex 6: Create a function that will return TRUE if an input integer is prime. Otherwise, return FALSE. You may want to look into the any() function. There are many possible solutions to this problem.
prime_check(2)
prime_check(5)
prime_check(4)
prime_check(237)
prime_check(131)
')

prime_check <- function(int){
  if(int == 1 || int == 2){
    return(T)
  }else {
    for(fact in 2:(int-1)){
      if(int %% fact == 0){
        return(F)
      }
    }
    return(T)
  }
}
print(prime_check(2))
print(prime_check(5))
print(prime_check(4))
print(prime_check(237))
print(prime_check(131))