# 2 variable gglot2

library(ggplot2)
library(ggplot2movies)

pl <- ggplot(movies, aes(x = year, y = rating))

# basic 2 variable bind plot - geom_bin2d
pl.bind2 <- pl + geom_bin2d(binwidth= c(3,1))
print(pl.bind2)

# scale_fill_gradient
pl.bind2.color <- pl.bind2 + scale_fill_gradient(low = 'blue', high = 'red')
print(pl.bind2.color)



# basic 2 variable bind plot - geom_hex
pl.bind2 <- pl + geom_hex()
print(pl.bind2)

# scale_fill_gradient
pl.bind2.color <- pl.bind2 + scale_fill_gradient(low = 'blue', high = 'red')
print(pl.bind2.color)




# basic 2 variable bind plot - geom_density
pl.bind2 <- pl + geom_density2d()
print(pl.bind2)