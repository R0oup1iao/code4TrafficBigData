data <- read.csv("input.csv")
install.packages("RPostgreSQL")
library(DBI)
library(RPostgreSQL)
connection <- dbConnect(PostgreSQL(), host="localhost", user= "ACME_Lab", password="12345678", dbname="Transportation Big Data",port = "5432") 
dbWriteTable(conn = connection, name = "real_time_data", value = data)
read_data = dbReadTable(connection,"real_time_data")