# tidyr
# tidyr gather(), spread(), seprate(), unite() functions

# install.packages('tidyr')
# install.packages('data.table')

library(tidyr)
library(data.table)

# gather() : collapse multiple columns to key value pairs
comp <- c(1,1,1,2,2,2,3,3,3)
yr <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
q1 <- runif(9, min=0, max=100)
q2 <- runif(9, min=0, max=100)
q3 <- runif(9, min=0, max=100)
q4 <- runif(9, min=0, max=100)
df <- data.frame(comp=comp,year=yr,Qtr1 = q1,Qtr2 = q2,Qtr3 = q3,Qtr4 = q4)
gather.df <- gather(df, Quater, Revenue, Qtr1:Qtr4)
print(gather.df)
print(df %>%
        gather(Quater, Revenue, Qtr1:Qtr4))

# spread() : compliment of gather
stocks <- data.frame(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)
print(head(stocks))

stocks.gather <- stocks %>%
  gather(stock, price, X, Y, Z)
print(stocks.gather)

# spread() : to spread the gathered data : in this case to actual form
stocks.spread <- stocks.gather %>% spread(stock, price)
print(stocks.spread)

# seprate() : single column to multiple columns
df <- data.frame(new.col = c(NA,'a.x','b.y','c.z'))
print(df)
df.seprate <- separate(df, new.col, c('ABC','xyz'))
print(df.seprate)

df <- data.frame(new.col = c(NA,'a-x','b-y','c-z'))
print(df)
df.seprate <- separate(df, new.col, into = c('abc','xyz'), sep = '-')
print(df.seprate)

# unite() : merge 2 columns into 1
df.unite <- unite(df.seprate, new.colJoined, abc, xyz)
print(df.unite)

df.unite <- unite(df.seprate, new.colJoined, abc, xyz, sep= '---')
print(df.unite)

