# install.packages('RMySQL')
library(RMySQL)

connection = dbConnect(MySQL(), user = 'root', password = '',
                       dbname = 'jobs', host = 'localhost')

dbListTables(connection)

res <- dbSendQuery(connection, statement = 'Select * FROM jobs')
# print(data)
data <- fetch(res)
print(data)

# Where Clause
res <- dbSendQuery(connection, statement = "Select * FROM jobs WHERE Location = 'Delhi'")
data <- fetch(res)
print(data)

# create Table
df <- mtcars
dbWriteTable(connection, 'mtcars', df, overwrite = T)

iris <- iris
dbWriteTable(connection, 'iris', iris, overwrite = T)

