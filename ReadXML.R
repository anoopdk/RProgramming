# install.packages('XML')
library(XML)
library(methods)

data <- xmlParse(file = 'data_xml.xml')
print(data)

# Get the root node from xml
root <- xmlRoot(data)
print(root[1])

# get the first element of root node
print(root[[1]])
print(root[[1]][[1]])

print(root[[1]][[2]])

# get the second element of third node
print(root[[3]][[2]])


# xml to dataframe
df <- xmlToDataFrame(data)
df
