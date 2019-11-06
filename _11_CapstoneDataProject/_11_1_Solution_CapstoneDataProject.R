# Capstone Data Project

writeLines("Let's get started!
Follow the steps outlined below using your new R skills and help the Oakland A's recruit under-valued players!

           
Data
We'll be using data from Sean Lahaman's Website a very useful source for baseball statistics. The documentation for the csv files is located in the readme2013.txt file. You may need to reference this to understand what acronyms stand for.

Use R to open the Batting.csv file and assign it to a dataframe called batting using read.csv
")

batting <- read.csv("./_11_CapstoneDataProject/Batting.csv")
print(head(batting))
print(str(batting))



writeLines("
Make sure you understand how to call the columns by using the $ symbol.

Call the head() of the first five rows of AB (At Bats) column
")
print(batting$AB[0:5])



writeLines("
Call the head of the doubles (X2B) column
")
print(head(batting$X2B))



writeLines("
Alright! Let's move on!

Feature Engineering
We need to add three more statistics that were used in Moneyball! These are:

Batting Average
On Base Percentage
Slugging Percentage
Click on the links provided and search the wikipedia page for the formula for creating the new statistic! For example, for Batting Average, you'll need to scroll down until you see:

AVG=H/AB
 
Which means that the Batting Average is equal to H (Hits) divided by AB (At Base). So we'll do the following to create a new column called BA and add it to our data frame:
")
batting$BA <- batting$H/batting$AB
print(tail(batting$BA, 5))



writeLines("
Now do the same for some new columns! On Base Percentage (OBP) and Slugging Percentage (SLG). Hint: For SLG, you need 1B (Singles), this isn't in your data frame. However you can calculate it by subtracting doubles,triples, and home runs from total hits (H): 
1B = H-2B-3B-HR

Create an OBP Column
OBP={H+BB+HBP}/{AB+BB+HBP+SF}

Create an SLG Column
SLG = {1B+(2*2B)+(3*3B)+(4*HR)}/{AB}
")
library(dplyr)
batting <- mutate(batting, OBP = (H+BB+HBP)/(AB+BB+HBP+SF))
batting <- mutate(batting, SLG = ((H-X2B-X3B-HR)+(2*X2B)+(3*X3B)+(4*HR))/AB)



writeLines("
Check the structure of your data frame using str()
")
print(str(batting))



writeLines("
Merging Salary Data with Batting Data
We know we don't just want the best players, we want the most undervalued players, meaning we will also need to know current salary information! We have salary information in the csv file 'Salaries.csv'.

Complete the following steps to merge the salary data with the player stats!

Load the Salaries.csv file into a dataframe called sal using read.csv
")
salaries <- read.csv("./_11_CapstoneDataProject/Salaries.csv")
print(head(salaries))



writeLines("
Use summary to get a summary of the batting data frame and notice the minimum year in the yearID column. Our batting data goes back to 1871! Our salary data starts at 1985, meaning we need to remove the batting data that occured before 1985.

Use subset() to reassign batting to only contain data from 1985 and onwards
")
batting.from1985 <- batting %>% filter(yearID >= 1985)



writeLines("
Now use summary again to make sure the subset reassignment worked, your yearID min should be 1985
")
print(summary(batting.from1985))



writeLines("
Now it is time to merge the batting data with the salary data! Since we have players playing multiple years, we'll have repetitions of playerIDs for multiple years, meaning we want to merge on both players and years.

Use the merge() function to merge the batting and sal data frames by c('playerID','yearID'). Call the new data frame combo
")
combo <- merge(batting, salaries, by= c('playerID','yearID'))



writeLines("
Use summary to check the data
")
print(summary(combo))



writeLines("
Analyzing the Lost Players
As previously mentioned, the Oakland A's lost 3 key players during the off-season. We'll want to get their stats to see what we have to replace. The players lost were: first baseman 2000 AL MVP Jason Giambi (giambja01) to the New York Yankees, outfielder Johnny Damon (damonjo01) to the Boston Red Sox and infielder Rainer Gustavo 'Ray' Olmedo ('saenzol01').

Use the subset() function to get a data frame called lost_players from the combo data frame consisting of those 3 players. Hint: Try to figure out how to use %in% to avoid a bunch of or statements!

Use subset again to only grab the rows where the yearID was 2001.

Reduce the lost_players data frame to the following columns: playerID,H,X2B,X3B,HR,OBP,SLG,BA,AB
")
lost_players <- combo %>% subset(playerID %in% c('giambja01', 'damonjo01', 'saenzol01') & yearID == 2001) %>% select(playerID,H,X2B,X3B,HR,OBP,SLG,BA,AB)
print(lost_players)



writeLines("
Replacement Players
Now we have all the information we need! Here is your final task - Find Replacement Players for the key three players we lost! However, you have three constraints:

The total combined salary of the three players can not exceed 15 million dollars.
Their combined number of At Bats (AB) needs to be equal to or greater than the lost players.
Their mean OBP had to equal to or greater than the mean OBP of the lost players
Use the combo dataframe you previously created as the source of information! Remember to just use the 2001 subset of that dataframe. There's lost of different ways you can do this, so be creative! It should be relatively simple to find 3 players that satisfy the requirements, note that there are many correct combinations available!


(Or just use the dplr package with arrange())

There are a lot of correct answers for this part! This is where you can really have fun and explore the data with ggplot, figure out which are good data points to split your data on to find replacement players. This ending is left intentionally more open-ended so you can get a feel for exploring real data! Check out the solutions for an example of one way to solve this part.
")
combo.2001 <- combo %>% subset(yearID == 2001 & salary < 8000000 & OBP > 0 & AB >=450) %>% arrange(desc(OBP)) %>% select(playerID, salary, OBP, AB) %>% head(10)

# use this to filter the data
library(ggplot2)
pl <- ggplot(combo.2001, aes(x = OBP, y = Salary)) + geom_point(size=2)

lost_players.OBPmean <- mean(lost_players$OBP)
lost_players.ABsum <- sum(lost_players$AB)

result <- FALSE
count <- 1
while (count < 21) {
  new_players <- sample_n(combo.2001, 3)
  if((sum(new_players$salary) <= 15000000) & (sum(new_players$AB) >= lost_players.ABsum) & (mean(new_players$OBP) >= lost_players.OBPmean)){
    cat("\nOption :", count,"\n")
    print(new_players)
    count <- count + 1
  }
}

