goog <- c(450,451,462,473,487)
msft <- c(230,231,232,233,220)

stocks <- c(goog, msft)

print(stocks)

stock.matrix <- matrix(stocks, byrow=T, nrow=2)

days <- c('Mon', 'Tue', 'Wed', 'Thur', 'Fri')
st.names <- c('Google', 'Microsoft')

colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names

print(stock.matrix)