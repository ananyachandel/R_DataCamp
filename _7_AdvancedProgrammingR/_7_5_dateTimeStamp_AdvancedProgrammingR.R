# date and timestamp function

# today's date
today <- Sys.Date()
print(today)
print(class(today))
char.date <- as.character(today)
print(class(char.date))

# assing date in different format %d : day, %m, %b, %B : months, %y, %Y : year
my.date <- as.Date("oct-31-2019", format = "%b-%d-%Y")
print(my.date)
my.date <- as.Date("october-31-19", format = "%B-%d-%y")
print(my.date)
my.date <- as.Date("10-31-2019", format = "%m-%d-%Y")
print(my.date)

# POSIXct and POSIXlt data type
print(as.POSIXct("11:02:03", format="%H:%M:%S"))
print(as.POSIXlt("11:02:03", format="%H:%M:%S"))

# strptime - to convert string to time
strptime.example <- strptime("11:02:03", format="%H:%M:%S")
print(strptime.example)

# to check the abbrevation of different types of element date-time format
help("strptime")





