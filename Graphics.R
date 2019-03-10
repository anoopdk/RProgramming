# Histograms
# Bar Plots
# Pie Charts
# Scatter plots
# Line Plots
# Box Plots

library(RColorBrewer)

color <- brewer.pal(7,'Pastel1')
days <- c('Sun','Mon','Tues','Wed','Thu','Fri','Sat')
temperatures <- c(29,28,20,25,30,32,33)
barplot(temperatures, 
        main = 'Temperatures of the week',
        col = color,
        xlab = 'Day',
        ylab = 'Temp',
        names.arg = days
        )

dataset <- airquality
View(dataset)
hist(dataset$Temp, labels = T)

boxplot(dataset$Wind)
boxplot(dataset$Wind, notch = T)
boxplot(dataset$Wind, notch = T,
        horizontal = T, col = 'orange')


parties <- c('BJP','Congress','AAP')
government <- c(22,4,2)
pie(x = government, labels = parties,
    clockwise = T, 
    col = c('red','orange','green'))



