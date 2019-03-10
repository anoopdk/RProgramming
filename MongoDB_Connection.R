library(ggplot2)
library(dplyr)
library(mongolite)

crimes = read.csv('Property_stolen_and_recovered.csv')
head(crimes)

# get column names
names(crimes)

# my_collection = mongo(collection = 'crimes', 
#                       db = 'crimeIndia')

my_collection = mongo(collection = 'crimes', 
                      db = 'criminalCases')

# Insert database and table in mongoDB
my_collection$insert(crimes)

my_collection$count()

# show one data
my_collection$iterate()$one()

# count distinct
my_collection$distinct('Sub_Group_Name')
length(my_collection$distinct('Sub_Group_Name'))

# Using COnditions
my_collection$find('{"Sub_Group_Name" : "3. Burglary"}')
my_collection$count('{"Sub_Group_Name" : "3. Burglary"}')
