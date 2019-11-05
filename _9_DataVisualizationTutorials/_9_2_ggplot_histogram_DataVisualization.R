# install.packages("ggplot2movies")
# ggplot2movies is a df for the ggplot tutorials

library(ggplot2)
library(ggplot2movies)

# data, aesthetics
pl <- ggplot(movies, aes(x=rating))

# geometery : Histograms basic
pl.hist <- pl + geom_histogram()
print(pl.hist)

# geometery : Histograms binwidth, coor, fill, alpha (for transperancy)
pl.hist <- pl + geom_histogram(binwidth = 0.1, color = 'blue', fill = 'yellow', alpha = 0.4)
print(pl.hist)

# lables
pl.lables <- pl.hist + xlab('Movie Rating') + ylab('Count')
print(pl.lables)

# title
pl.title <- pl.lables + ggtitle('Movie Rating Plot')
print(pl.title)




# fill based on color
pl.hist <- pl + geom_histogram(binwidth = 0.1, aes(fill=..count..))
print(pl.hist)

# lables
pl.lables <- pl.hist + xlab('Movie Rating') + ylab('Count')
print(pl.lables)

# title
pl.title <- pl.lables + ggtitle('Movie Rating Plot')
print(pl.title)

