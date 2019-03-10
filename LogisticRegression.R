dataset <- read.csv('Social_Network_Ads.csv')
View(dataset)

dataset <- dataset[3:5]
View(dataset)

library(caTools)
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set <- subset(dataset, split == T)
test_set <- subset(dataset, split == F)

training_set[-3] <- scale(training_set[-3])
test_set[-3] <- scale(test_set[-3])

# glm - Generalized Linear Model
classfier <- glm(formula = Purchased ~ .,
                 family = binomial, data = training_set)
y_pred <- predict(classfier, newdata = test_set[-3])

y_pred <- ifelse(y_pred > 0.5, 1, 0)

# Confusion Matrix
cm <- table(test_set[,3], y_pred > 0.5)
