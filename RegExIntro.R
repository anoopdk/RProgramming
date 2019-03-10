# state.name
head(as.character(state.division))

# by default grep gives the index
grep(pattern = 'North', state.division)

grep(pattern = 'North', state.division, value = T)
grep(pattern = 'North | South', state.division, value = T)

grepl('North | South', state.division)
sum(grepl('North | South', state.division))

text = c("I am from India", "I am working on R Programming",
         "R is used for Data Analysis")
regexpr("I", text)

gregexpr("I", text)


