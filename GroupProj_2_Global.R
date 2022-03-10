library(fpp3)
library(shiny)
library(dplyr)
library(readr)

stocks <- read_csv("nyse_stocks.csv.zip")


stocks$date <- as.Date(stocks$date)
stocks <- tsibble(stocks, index = date, key = symbol)

stocks$date <- as.Date(stocks$date)
stocks <- tsibble(stocks, index = date, key = symbol)


Feature 1
Budget Feature choose lower and upper bound
Feature 2
Supply Drop down menu of stocks within budget
Feature 3
Graph time series of selected stock
Feature 4
spit out stock info like record high or industry/sector etc.
