dataset <- read.csv('50_Startups.csv')
View(dataset)

dataset$State <- factor(dataset$State,
                        levels = c('New York','California','Florida'),
                        labels = c(1,2,3))
View(dataset)

library(caTools)
split = sample.split(dataset$Profit, SplitRatio = 0.8)
train = subset(dataset, split == T)
test = subset(dataset, split == F)

regression <- lm(formula = Profit ~ .,
                 data = train)

y_prediction <- predict(regression, newdata = test)
