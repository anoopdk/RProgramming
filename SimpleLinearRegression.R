# Simple Linear Regression
dataset <- read.csv('Salary_Data.csv')
View(dataset)

# install.packages('caTools')
library(caTools)

# we split data to overcome overfitting and underfitting
split = sample.split(dataset$Salary, SplitRatio = 2/3)
training_set = subset(dataset, split == T)
test_set = subset(dataset, split == F)

# lm - linear model
regression <- lm(formula = Salary ~ YearsExperience,
                 data = training_set)

y_prediction <- predict(regression, newdata = test_set)


library(ggplot2)
ggplot() +
  geom_point(aes(x = training_set$YearsExperience,
                   y = training_set$Salary)) +
  geom_line(aes(x = training_set$YearsExperience,
                predict(regression, newdata = training_set))) +
  ggtitle('Salary vs Experience (Training Set)')

# plot the test data
ggplot() +
  geom_point(aes(x = test_set$YearsExperience,
                 y = test_set$Salary)) +
  geom_line(aes(x = test_set$YearsExperience,
                predict(regression, newdata = test_set))) +
  ggtitle('Salary vs Experience (Test Set)')
