writeLines('
Example: Write a script that prints "Hello" if the variable x is equal to 1:
           ')
x <- 1
if(x ==1)
  print("Hello")

writeLines('
Exercise Problems
Ex 1: Write a script that will print "Even Number" if the variable x is an even number, otherwise print "Not Even":
           ')
x <- 10
if((x %% 2) == 0){
  print("Even Nuber")
}else{
  print("Not Even")
}

writeLines('
Ex 2: Write a script that will print "Is a Matrix" if the variable x is a matrix, otherwise print "Not a Matrix". Hint: You may want to check out help(is.matrix)
x <- matrix()
           ')
x <- matrix()
if(is.matrix(x)){
  print('Is a Matrix')
} else{
  print('Not a Matrix')
}

writeLines('
Ex 3: Create a script that given a numeric vector x with a length 3, will print out the elements in order from high to low. You must use if,else if, and else statements for your logic. (This code will be relatively long)
x <- c(3,7,1)
           ')
x <- c(3, 7, 1)
maxX <- max(x)
minX <- min(x)
x.sort <- c()
if(x[1] != maxX && x[1] != minX){
  x.sort <- c(maxX, x[1], minX)
} else if(x[2] != maxX && x[2] != minX){
  x.sort <- c(maxX, x[2], minX)
} else if(x[3] != maxX && x[3] != minX){
  x.sort <- c(maxX, x[3], minX)
}
print(x.sort)

writeLines('
Ex 4: Write a script that uses if,else if, and else statements to print the max element in a numeric vector with 3 elements.
x <- c(20, 10, 1)
           ')
x <- c(10, 30, 30)
x.max <- x[1]
if(!(x[2] == x[1])){
  if(x[2] > x[1]){
    if(!(x[3] == x[2])){
      if(x[3] > x[2]){
        x.max <- x[3]
      } else{
        x.max <- x[2]
      }
    }else {
      x.max <- x[2]
    }
  } else{
    if(!(x[3] == x[1])){
      if(x[3] > x[1]){
        x.max <- x[3]
      } else{
        x.max <- x[1]
      }
    }else {
      x.max <- x[1]
    }
  }
} else {
  if(!(x[3] == x[2])){
    if(x[3] > x[2]){
      x.max <- x[3]
    } else{
      x.max <- x[2]
    }
  }else {
    x.max <- x[2]
  }
}

print(x.max)