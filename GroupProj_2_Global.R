library(fpp3)

stocks <- read.csv("nyse_stocks.csv")
head(stocks)

stocks$date <- as.Date(stock$date)
stocks <- tsibble(stocks, index = date, key = symbol)

Feature 1
Budget Feature choose lower and upper bound app spits out viable stocks
Feature 2
Pick a Stock and Graph
Feature 3+4
spit out stock info like record high or industry/sector etc.
