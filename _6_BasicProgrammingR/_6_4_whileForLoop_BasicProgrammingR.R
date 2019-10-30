x <- 0
while (x < 10) {
  print(paste('x is :', x))
  x <- x+1
}

v <- 1:10

for(varible in v){
  print(varible)
}

x.list <- list(c(1,2,3), mtcars, 12)

for (items in x.list) {
  print(items)
}

mat <- matrix(1:25, nrow=5 )

for(row in 1:nrow(mat)){
  for(col in 1:ncol(mat)){
    print(paste('The elements at row :',row,'and col:', col, 'is', mat[row,col]))
  }
}
