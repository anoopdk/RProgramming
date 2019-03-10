install.packages('tidyr')
library(tidyr)

my_data <- mtcars
my_data$cars <- rownames(my_data)
View(my_data)

# gather - convert wide data to long format
temp_data <- my_data %>% gather(attribute, value, -cars)
View(temp_data)

# Spread - convert long data to wide format
data_1 <- temp_data %>% spread(attribute, value)
View(data_1)

# Unite
dates <- as.Date('2018-01-01') + 0:20
hours <- sample(24,21)
minutes <- sample(60,21)
seconds <- sample(60,21)
df <- data.frame(dates, hours, minutes, seconds)
View(df)

new_data <- df %>% 
  unite(time, c(hours, minutes, seconds), sep=':')
View(new_data)

# Sepearte
sep_data <- new_data %>% 
  separate(time, c('hrs','mins','secs'), sep=':')
View(sep_data)
