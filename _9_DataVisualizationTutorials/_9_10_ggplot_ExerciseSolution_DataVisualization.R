writeLines("ggplot2 Exercises

Recreate the following plots shown below. Don't worry if your plots don't match exactly what is shown below, as long as you have a general understanding of ggplot2 and the grammar of graphics

For the first few plots, use the mpg dataset
")

library(ggplot2)
library(ggthemes)
print(head(mpg))


writeLines("
Ex 1 : Histogram of hwy mpg values:
")
pl.hist <- ggplot(data = mpg, aes(x = hwy)) + geom_histogram(fill = 'red', aplha=0.5, bins = 20)
print(pl.hist)

writeLines("
Ex 2 : Barplot of car counts per manufacturer with color fill defined by cyl count:
")
pl.bar <- ggplot(data = mpg, aes(x = manufacturer)) + geom_bar(aes(fill = factor(cyl)))
print(pl.bar)

writeLines("
Switch now to use the txhousing dataset that comes with ggplot2
")
print(head(txhousing))

writeLines("
Ex 3 : Create a scatterplot of volume versus sales. Afterwards play around with alpha and color arguments to clarify information.
")
pl.scatter <- ggplot(data = txhousing, aes(x = sales, y = volume)) + geom_point(alpha = 0.3, aes(color = volume), size = 3) + scale_color_gradient(low = 'blue', high = 'red')
print(pl.scatter)

writeLines("
Ex 4 : Add a smooth fit line to the scatterplot from above. Hint: You may need to look up geom_smooth() :
")
pl.smooth <- pl.scatter + geom_smooth()
print(pl.smooth)