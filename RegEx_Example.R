# Text Preprocessing/Cleaning
data <- readLines('homicides.txt')
length(data)
data[1]

grep('iconHomicideShooting', data)
length(grep('iconHomicideShooting', data))

data[1000]

length(grep('iconHomicideShooting | icon_homicide_shooting',
            data))

length(grep("Cause: Shooting", data))
length(grep("Cause: [Ss]hooting", data))

# How we can find date of homicide

data[1]

regexpr("<dd>Found(.*)</dd>", data[1:10])
substr(data[1], 177, 177+93-1)

regexpr("<dd>Found(.*?)</dd>", data[1:10])
substr(data[1], 177,177+33-1)

r <- regexpr("<dd>[F|f]ound(.*?)</dd>", data[1:10])
regmatches(data[1:10], r)

x <- substr(data[1], 177,177+33-1)

# we want to strip surroundig the "January 1, 2007"
# we will use sub() to replace the values
pattern <- "<dd>[F|f]ound on |</dd>"
sub(pattern, "", x)

gsub(pattern, "", x)

pattern_1 <- "<dd>[F|f]ound(.*?)</dd>"
r <- regexpr(pattern_1, data[1:10])
m <- regmatches(data[1:10], r)

date <- gsub(pattern, "", m)

dates <- as.Date(date, "%B %d,%Y")

# Lets make a plot of monthly counts
pattern_1 <- "<dd>[F|f]ound on (.*?)</dd>"
r <- regexec(pattern_1, data)
m <- regmatches(data, r)
dates <- sapply(m, function(x) x[2])
dates <- as.Date(dates, "%B %d,%Y")
hist(dates,"month", freq = T)











