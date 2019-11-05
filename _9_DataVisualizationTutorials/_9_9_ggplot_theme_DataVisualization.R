library(ggplot2)

theme_set(theme_minimal())
pl <- ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point()
print(pl)

# theme
pl.themeDark <- pl + theme_dark()
print(pl.themeDark)

# add other themes
# install.packages("ggthemes")
library(ggthemes)

pl.ggThemes <- pl + theme_economist()
print(pl.ggThemes)