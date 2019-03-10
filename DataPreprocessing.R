# install.packages('caTools')
library(caTools)

dataset <- read.csv('Data.csv')
View(dataset)

# Handle Missing Values
dataset$Age <- ifelse(is.na(dataset$Age),
                   ave(dataset$Age, FUN = function(x) mean(x, na.rm = T)),
                   dataset$Age
                   )

dataset$Salary <- ifelse(is.na(dataset$Salary),
                   ave(dataset$Salary, FUN = function(x) mean(x, na.rm = T)),
                   dataset$Salary
)
View(dataset)

# Label Encoding
dataset$Country <- factor(dataset$Country,
                          levels = c('France','Spain','Germany'),
                          labels = c(1,2,3))
View(dataset)

# Feature Scaling
dataset$Age <- scale(dataset$Age)
dataset$Salary <- scale(dataset$Salary)
View(dataset)

# Train Test Split
dataset_split <- sample.split(dataset$Salary, SplitRatio = 0.8)
train <- subset(dataset, dataset_split == T)
test <- subset(dataset, dataset_split == F)












