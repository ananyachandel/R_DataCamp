library(ggplot2)

pl <- ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point()
print(pl)

# facet by x axis
pl.xFacets <- pl + facet_grid( . ~ cyl)
print(pl.xFacets)

# facet by y axis
pl.yFacets <- pl + facet_grid(drv ~ .)
print(pl.yFacets)

# facets by x and y axis both - 2 variables
pl.2Facets <- pl + facet_grid(drv ~ cyl)
print(pl.2Facets)