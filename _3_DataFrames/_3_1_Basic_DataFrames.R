# some madeup weather data
days <- c('Mon', 'Tue', 'Wed', 'Thur', 'Frid')
temp <- c(22.2, 21, 23, 24, 25.4)
rain <- c(T, T, F, F, T)

# Pass in the vectors: 
df <- data.frame(days, temp, rain)
print(df)

# Fetch a column vector
print(df$days)

# Fetch a column in data frame format itself
print(df['days'])

# Fetch 1,2 row with days and temp column
print(df[1:2, c('days', 'temp')])

# subset - get data frame when it rained
rained <- subset(df, subset = rain == TRUE)
print(rained)

# subset - get data when temp greater than equal to  23
tempGreater23 <- subset(df, subset = (temp>= 23))
print(tempGreater23)

# Ordering the data frame - returns vector and pass a rows index
sorted.temp <- order(df['temp'])
print(sorted.temp)
sorted.df <- df[sorted.temp, ]
print(sorted.df)

# Ordering in descending manner - data frame
desc.temp <- order(-df['temp'])
print(desc.temp)
desc.df <- df[desc.temp,]
print(desc.df)

# Usng $ sign notation
desc.temp <- order(-df$temp)
desc.df <- df[desc.temp,]
print(desc.df)
