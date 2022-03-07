library(fpp3)

stocks <- read.csv("nyse_stocks.csv")

stocks$date <- as.Date(stock$date)
stocks <- tsibble(stocks, index = date, key = symbol)

Feature 1
Budget Feature choose lower and upper bound
Feature 2
Supply Drop down menu of stocks within budget
Feature 3
Graph time series of selected stock
Feature 4
spit out stock info like record high or industry/sector etc.
