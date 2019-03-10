# install.packages('rvest')
library(rvest)
library(stringr)

url <- 'https://www.imdb.com/title/tt4154756/?ref_=nv_sr_1'
webpage <- read_html(url)

# class - .
# id - #
# %>% - ctrl + shift + m
data <- webpage %>% html_node('.title_wrapper') %>% html_text(trim = T)

data <- str_replace_all(data, ' ','')

data <- str_replace_all(data, '\n', '')

summary <- webpage %>% html_node('.summary_text') %>% html_text(trim = T)


