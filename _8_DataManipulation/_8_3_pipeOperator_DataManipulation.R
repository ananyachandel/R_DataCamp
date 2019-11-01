# pipe operator

library(dplyr)

# Nesting
result <- arrange(sample_n(filter(mtcars, mpg>20), size = 5), desc(mpg))
print(result)

# Multiple Assignments
a <- filter(mtcars, mpg > 20)
b <- sample_n(a, size = 5)
c <- arrange(b, desc(mpg))
print(c)

# pipe operator
result <- mtcars %>%
  filter(mpg > 20) %>%
  sample_n(size = 5) %>%
  arrange(desc(mpg))
print(result)