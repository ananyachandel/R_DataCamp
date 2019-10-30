name_of_func <- function(input1, input2, input3=45){
  result <- input1 + input2
  return(result)
}

print(name_of_func(20,30))

hello <- function(name='Dalal'){
  print(paste("Hello",name))
}

hello("Sobil")
hello()