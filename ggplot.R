# install.packages('ggplot2')
library(ggplot2)

dataset <- read.csv('housesData.csv')
View(dataset)

# aes -> aesthetic
ggplot(dataset, aes(x = price)) + 
  geom_histogram()

ggplot(dataset, aes(x = price)) + 
  geom_histogram(bins = 60, 
                 fill='palegreen',
                 col='red')

# ploting categorical data
ggplot(dataset, aes(waterfront)) + geom_bar()

ggplot(dataset, aes(waterfront, fill = centralAir)) +
  geom_bar()

ggplot(dataset, aes(waterfront, fill = centralAir)) +
  geom_bar(position = 'fill')

# Scatter plots
ggplot(dataset, aes(price, livingArea)) + geom_point()

# BoxPlot
ggplot(dataset, aes(waterfront, price)) + geom_boxplot()

# Freq_Polygon
ggplot(dataset, aes(price)) + geom_freqpoly(bins = 60)

# Categorical BoxPlot
ggplot(dataset, aes(factor(rooms), y=price)) + 
  geom_boxplot()

ggplot(dataset, aes(factor(rooms), y=price)) + 
  geom_boxplot()

ggplot(dataset, aes(factor(rooms), y=price, fill = centralAir)) + 
  geom_boxplot(col = 'black')

# Smooth line
ggplot(dataset, aes(price, livingArea)) + geom_smooth()
ggplot(dataset, aes(price, livingArea)) +
  geom_smooth(se = F)
ggplot(dataset, aes(price, livingArea, col=newConstruction)) +
  geom_smooth(se = F)

# Linear Model
ggplot(dataset, aes(livingArea, price)) +
  geom_point() +
  geom_smooth(se = F, method = 'lm')

# Facet grid
ggplot(dataset, aes(livingArea, price, col = centralAir)) +
  geom_point() +
  geom_smooth(model = 'lm', se = F) +
  facet_grid(~centralAir)

ggplot(dataset, aes(livingArea, price, col = heating)) +
  geom_point() +
  geom_smooth(model = 'lm', se = F) +
  facet_grid(~heating)

# Theme
ggplot(dataset, aes(factor(rooms), y=price, fill = centralAir)) + 
  geom_boxplot(col = 'black') -> obj_1

obj_1 + labs(title = 'Price w.r.t rooms',
             xlab = 'Rooms',
             ylab = 'Price') -> obj_2

obj_2 + theme_bw()
obj_2 + theme_dark()
obj_2 + theme(panel.background = element_rect(fill = 'Palegreen'))







