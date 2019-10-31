# regular function

text <- "Hi there, do ypu know who you are voting for?"
v <- c('a', 'b', 'c', 'd', 'd')
print(text)
print(v)
# grepl
print(grepl('voting',text))
print(grepl('dog', text))
print(grepl('d',v))

# grep
print(grep('voting',text))
print(grep('dog', text))
print(grep('d',v))