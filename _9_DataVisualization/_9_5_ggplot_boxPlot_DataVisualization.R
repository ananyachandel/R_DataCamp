library(ggplot2)
df <- mtcars

pl <- ggplot(data = df, aes(x = factor(cyl), y = mpg))

# box plot : basic plot
pl.boxPlot <- pl + geom_boxplot()
print(pl.boxPlot)

# box plot : switch the axis
pl.boxPlot <- pl + geom_boxplot() + coord_flip()
print(pl.boxPlot)

# box plot : color
pl.boxPlot <- pl + geom_boxplot(aes(fill=factor(cyl)))
print(pl.boxPlot)