# Mean
# Median
# Mode
# Standard Deviation
# Variance
# Range

scores <- c(45,34,67,87,12,30,45,56,80)
# mean()
# median()
# sd()
# var()
m <- sum(scores) / length(scores)
print(paste("Mean is",m))

scores <- sort(scores)
median(scores)

numer <- scores - m
numer <- numer ^ 2

v = sum(numer) / (length(scores) - 1)
sd <- sqrt(v)


