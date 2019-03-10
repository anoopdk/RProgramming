movie <- readline(prompt = "Enter movie name : ")

movie <- baahubali

url <- 'https://www.imdb.com/find?ref_=nv_sr_fn&q='+movie
print(url)

new_url <- 'https://www.imdb.com/find?ref_=nv_sr_fn&q=baahubali'

webpage <- read_html(new_url)
data %>% html_node('.result_text')

# fetch href from data variable
href <- '/title/tt2631186/?ref_=fn_al_tt_1'

url <- 'https://www.imdb.com'+href
webpage <- read_html(url)




