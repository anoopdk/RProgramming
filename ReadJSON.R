# install.packages('rjson')
library(rjson)

# data <- fromJSON(file = 'weather.json')
# data
data <- fromJSON(file = 'sachin.json')
print(data)
data$imageURL
data$profile
data$bowlingStyle

df <- as.data.frame(data)
head(df)
