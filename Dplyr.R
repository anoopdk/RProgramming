# install.packages('dplyr')
library(dplyr)

# Select
# filter
# arrange
# distinct
# mutate
# summarise

matches <- read.csv('matches.csv')
View(matches)

head(matches)
tail(matches)
summary(matches)

# Select any column from dataset
select(matches, city)
# matches$city

head(select(matches, c(city,team1, team2)))

select(matches, city, team1, team2)

head(select(matches, -c(venue, umpire1, umpire2, umpire3)))

select(matches, venue:toss_decision)


filter(matches, win_by_runs > 100)
filter(matches, win_by_runs > 50 & player_of_match == 'MS Dhoni')
filter(matches, win_by_wickets < 5 & player_of_match == 'MS Dhoni')


# chaining/pipelining
new_data <- matches %>% 
  select(team1, team2, win_by_runs, player_of_match) %>% 
  filter(win_by_runs > 50 & player_of_match == 'MS Dhoni')

matches %>% 
  select(team1, team2, win_by_runs, player_of_match) %>% 
  arrange(desc(win_by_runs))

distinct(matches, player_of_match)
distinct(matches, team1, team2)

matches %>% 
  select(player_of_match, win_by_runs, win_by_wickets) %>% 
  distinct(player_of_match)

matches %>% 
  filter(win_by_runs > 50) %>% 
  distinct(player_of_match)

matches %>% 
  select(team1, team2, player_of_match) %>% 
  filter(win_by_runs > 100)

matches %>% 
  select(win_by_runs) %>% 
  mutate(avgWin = mean(win_by_runs))

matches %>% 
  mutate(avgWickets = mean(win_by_wickets))

students <- read.csv('student.csv')
View(students)

r_means = rowMeans(students)

students <- students %>% 
  mutate(Average = r_means)
View(students)


write.csv(students, file = 'students_updated.csv')
