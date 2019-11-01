# Dplyr
# install.packages('dplyr')

# for the tutorial we are going to use nycflights13 package
# install.packages('nycflights13')

library(dplyr)
library(nycflights13)

print(head(flights))
print(summary(flights))

# filter(), slice(), arrange() dplyr functions

# filter() : it is somewhat equivalent to subset but easier
print(head(filter(flights, month==1, day==3, carrier=='AA')))

# slice() : fetch data from df by position
print(head(slice(flights,1:10)))

# arrange() : fetch data in a specific order
print(head(arrange(flights, year, month, day, arr_time)))
# desc
print(head(arrange(flights, year, month, day, desc(arr_time))))
