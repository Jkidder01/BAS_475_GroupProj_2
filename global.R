library(fpp3)
library(shiny)
library(dplyr)
library(readr)
library(shinydashboard)

stocks <- read_csv("nyse_stocks.csv.zip")


stocks$date <- as.Date(stocks$date)
stocks <- tsibble(stocks, index = date, key = symbol)

stocks$date <- as.Date(stocks$date)
stocks <- tsibble(stocks, index = date, key = symbol)


