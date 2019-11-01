# dplyr training exercise - answers

library(dplyr)

writeLines('Dplyr Exercises
Perform the following operations using only the dplyr library. We will be reviewing the following operations:

filter() (and slice())
arrange()
select() (and rename())
distinct()
mutate() (and transmute())
summarise()
sample_n() and sample_frac()
library(dplyr)
We will use the mtcars dataframe for this exercise!')
print(head(mtcars))

writeLines('
Ex 1 : Return rows of cars that have an mpg value greater than 20 and 6 cylinders.
')
result.1 <- filter(mtcars, mpg > 20, cyl == 6)
print(result.1)

writeLines('
Ex 2 : Reorder the Data Frame by cyl first, then by descending wt.
')
result.2 <- arrange(mtcars, cyl, desc(wt))
print(result.2)

writeLines('
Ex 3 : Select the columns mpg and hp.
')
result.3 <- select(mtcars, mpg, hp)
print(result.3)

writeLines('
Ex 4 : Select the distinct values of the gear column.
')
result.4 <- distinct(mtcars, gear)
print(result.4)

writeLines('
Ex 5 : Create a new column called "Performance" which is calculated by hp divided by wt.
')
result.5 <- mutate(mtcars, Performance = hp/wt)
print(result.5)

writeLines('
Ex 6 : Find the mean mpg value using dplyr.
')
result.6 <- mtcars %>%
  summarise(avg_mpg = mean(mpg))
print(result.6)

writeLines('
Ex 7 : Use pipe operators to get the mean hp value for cars with 6 cylinders.
')
result.7 <- mtcars %>%
  filter(cyl == 6) %>%
  summarise(mean_hp = mean(hp))
print(result.7)
