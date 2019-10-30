library(rvest)

# write this in console to check the package available
#demo(package = 'rvest')

# to check how rvest library works
#demo(package = 'rvest', topic = 'tripadvisor')

# Steps to fetch data from URL
# read the URL and assign HTML to URL
lego_movie <- read_html("http://www.imdb.com/title/tt1490017/")
# fetch first node only use - html_node
rating <- lego_movie %>%
  html_node("strong span") %>%
  html_text() %>%
  as.numeric()
print(rating)

# fetch all the nodes use html_nodes
cast <- lego_movie %>%
  html_nodes("#titleCast td:nth-child(2) a") %>%
  html_text()
print(cast)

# fetch the table
castDf <- lego_movie %>%
  html_nodes("table") %>%
  .[[1]] %>%
  html_table()
print(head(castDf))
print(castDf[2])
print(castDf$X4)
