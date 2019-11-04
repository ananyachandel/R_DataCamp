library(ggplot2)

pl <- ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point()
print(pl)

# coordinate - xlim & ylim
pl.coord <- pl + coord_cartesian(xlim = c(1,4), ylim = c(15,30))
print(pl.coord)

# coordinate - aspect ratio
pl.coord <- pl + coord_fixed(ratio = 1/3)
print(pl.coord)