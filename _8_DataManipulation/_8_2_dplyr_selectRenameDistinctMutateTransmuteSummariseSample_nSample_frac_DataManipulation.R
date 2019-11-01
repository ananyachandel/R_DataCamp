# Dplyr
# install.packages('dplyr')

# for the tutorial we are going to use nycflights13 package
# install.packages('nycflights13')

library(dplyr)
library(nycflights13)

print(head(flights))
print(summary(flights))

# select(), rename(), distinct(), mutate(), transmute(), summarise(), sample_n(), sample_frac() dplyr functions

# select() : select specific columns from df
print(head(select(flights,arr_time, day)))
print(head(select(flights,arr_time)))

# rename() : rename the column name in returned value
print(head(rename(select(flights,carrier), airline_carrier = carrier)))

# distinct() ; select distinct values in a column of a data frame
print(distinct(select(flights,carrier)))

# mutate() : add new columns which are function of existing columns of data frame
print(head(mutate(flights, new_col = arr_delay -  dep_delay)))
print(head(mutate(flights, new_col = arr_delay -  dep_delay, new_col2 = arr_delay +  dep_delay)))

# transmute() : to just fetch the new column of a mutate()- use transmute
print(head(transmute(flights, new_col = arr_delay -  dep_delay)))
print(head(transmute(flights, new_col = arr_delay -  dep_delay, new_col2 = arr_delay +  dep_delay)))

# summarise() : to fetch aggregate result on a column, such as group by in SQL
print(head(summarise(flights, avg_air= mean(air_time, na.rm = TRUE))))
print(head(summarise(flights, total_time= sum(air_time, na.rm = TRUE))))

# sample_n() : get random 10 rows
print(sample_n(flights, 10))
 
# sample_frac() : get random fraction of total rows in a df
print(sample_frac(flights, 0.1))
