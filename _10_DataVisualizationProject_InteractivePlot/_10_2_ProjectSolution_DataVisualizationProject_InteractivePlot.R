writeLines("
Assignment for ggplot2
we will be recreating this plot from The Economist:

What to do : 
This assignment will be very challenging! You will recreate this plot by following the steps outlined below. You will need to reference documentation! There are things in this plot that we have purposefully not covered to test your skills in going to the documentation and referencing what you need to know. Links and hints will be provided to along the way!

Let's get started!
Import the ggplot2 data.table libraries and use fread to load the csv file 'Economist_Assignment_Data.csv' into a dataframe called df (Hint: use drop=1 to skip the first column)
")

library(ggplot2)
library(data.table)

df <- fread("./_10_DataVisualizationProject/Economist_Assignment_Data.csv", drop = 1)
print(head(df))

writeLines("
Use ggplot() + geom_point() to create a scatter plot object called pl. You will need to specify x=CPI and y=HDI and color=Region as aesthetics
")
pl <- ggplot(data = df, aes(x = CPI, y = HDI)) + geom_point(aes(color = Region))
print(pl)



writeLines("
Change the points to be larger empty circles. (You'll have to go back and add arguments to geom_point() and reassign it to pl.) You'll need to figure out what shape= and size=
")
pl <- ggplot(data = df, aes(x = CPI, y = HDI)) + geom_point(shape = 1, size = 4, aes(color = Region))
print(pl)



writeLines("
Add geom_smooth(aes(group=1)) to add a trend line
")
pl.smooth <- pl +geom_smooth(aes(group=1))
print(pl.smooth)



writeLines("
We want to further edit this trend line. Add the following arguments to geom_smooth (outside of aes):

method = 'lm'
formula = y ~ log(x)
se = FALSE
color = 'red'
For more info on these arguments, check out the documentation under the Arguments list for details.

Assign all of this to pl2
")
pl2 <- pl +geom_smooth(aes(group=1), method = 'lm', formula = y ~ log(x), se = FALSE, color = 'red')
print(pl2)



writeLines("
It's really starting to look similar! But we still need to add labels, we can use geom_text! Add geom_text(aes(label=Country)) to pl2 and see what happens. (Hint: It should be way too many labels)
")
pl2.label <- pl2 + geom_text(aes(label=Country))
print(pl2.label)



writeLines("
Labeling a subset is actually pretty tricky! So we're just going to give you the answer since it would require manually selecting the subset of countries we want to label!
")
pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan", "Afghanistan", "Congo", "Greece", "Argentina", "Brazil", "India", "Italy", "China", "South Africa", "Spane", "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France", "United States", "Germany", "Britain", "Barbados", "Norway", "Japan", "New Zealand", "Singapore")
pl3 <- pl2 + geom_text(aes(label=Country), color = "gray20", data = subset(df, Country %in% pointsToLabel), check_overlap = TRUE)
print(pl3)



writeLines("
Almost there! Still not perfect, but good enough for this assignment. Later on we'll see why interactive plots are better for labeling. Now let's just add some labels and a theme, set the x and y scales and we're done!

Add theme_bw() to your plot and save this to pl4
")
pl4 <- pl3 + theme_bw()
print(pl4)



writeLines("
Add scale_x_continuous() and set the following arguments:

name = Same x axis as the Economist Plot
limits = Pass a vector of appropriate x limits
breaks = 1:10
")
pl4.scalex <- pl4 + scale_x_continuous(name = "Corruption Perceptions Index, 2011 (10=least corrupt)", limits = c(0.9,10.5), breaks = 1:10)
print(pl4.scalex)



writeLines("
Now use scale_y_continuous to do similar operations to the y axis!
")
pl4.scalexy <- pl4.scalex + scale_y_continuous(name = "Human Development Index, 2011 (1=Best)", limits = c(0.0,1.0), breaks = c(0.2, 0.4, 0.6, 0.8, 1.0))
print(pl4.scalexy)



writeLines("
Finally use ggtitle() to add a string as a title.
")
pl5 <- pl4.scalexy + ggtitle("Corruption and Human development")
print(pl5)

writeLines("
Convert the normal plot to interactive plot
")
library(plotly)
pl5.interactive <- ggplotly(pl5)
print(pl5.interactive)