library(ggplot2)

df <- mpg # mpd is a df of ggplot2 package

# barplot : used for classification based on value 
pl <- ggplot(df, aes(x=class))
pl.barPlot <- pl + geom_bar()
print(pl.barPlot)

# color the bar based on drive method i.e. front, rear or 4 wheel drive with values f, r, 4 in drv
pl.barPlot <- pl + geom_bar(color = 'blue', aes(fill = drv))
print(pl.barPlot)

# position adjustment - dodge - to view different values adjacent for a classificationt than one over the other
pl.barPlot <- pl + geom_bar(color = 'blue', aes(fill = drv), position = 'dodge')
print(pl.barPlot)

# position adjustment - fill - to view in percentage terms
pl.barPlot <- pl + geom_bar(color = 'blue', aes(fill = drv), position = 'fill')
print(pl.barPlot)
