# ggplot2
# install.packages('ggplot2')

library(ggplot2)

# data and aesthetics layer defined below
pl <- ggplot(data = mtcars, aes(x=mpg, y=hp))

# adding geometry layer
pl.geom <- pl + geom_point()
print(pl.geom) # using these 3 layers - data, aesthetics, geometery : we can create a plot


# facets : multiple plots on a single canvas
pl.facets <- pl.geom + facet_grid(cyl ~ .)
print(pl.facets)

# stats : add stattics layer
pl.stats <- pl.facets + stat_smooth()
print(pl.stats)

# coordinates layer
pl.coord <- pl.stats + coord_cartesian(xlim = c(10,25))
print(pl.coord)

# theme layer
pl.theme <- pl.coord + theme_dark()
print(pl.theme)