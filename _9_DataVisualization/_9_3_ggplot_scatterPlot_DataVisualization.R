library(ggplot2)

# Scatterplots : to show possible co-relation between to features of a data set

df <- mtcars

# data, aesthetics
pl <- ggplot(data = df, aes(x = wt, y = mpg))

# geometery point : size, aplha
pl.geom <- pl + geom_point(size = 5, alpha = 0.5)
print(pl.geom)

# geometery point : aes parameter such as size baed on feature
pl.geom <- pl + geom_point(aes(size=hp))
print(pl.geom)

# geometery point : aes parameter with factor
pl.geom <- pl + geom_point(aes(size=factor(cyl)))
print(pl.geom)

# geometery point : aes parameter with factor, shape, size, color
pl.geom <- pl + geom_point(aes(shape = factor(cyl), size=factor(cyl), color = factor(cyl)))
print(pl.geom)

# geometery point : aes parameter with color on feature
pl.geom <- pl + geom_point(aes(color = hp))
print(pl.geom)

# geometery point : scale_color_gradient layer
pl.scaleColor <- pl.geom + scale_color_gradient(low = 'blue', high = 'red')
print(pl.scaleColor)