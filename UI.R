fluidPage(
  titlePanel("Stock Picker"),
  
  fluidRow(

    column(6,
           
           sliderInput("slider1", label = h3("Available Budget"), min = floor(min(stocks$close)), 
                       max = ceiling(max(stocks$close)), value = c(200, 1000)),
           
           textOutput("SliderText"),
           
           uiOutput("dropdown"),
           
           plotOutput("stockplot"),
           
           dateRangeInput("daterange", label = h3("Stock History Range"), start = min(stocks$date), end = max(stocks$date), min = min(stocks$date), max = max(stocks$date)),
           
           headerPanel(h3("Stock Information")),
           
           tableOutput("stocktable")
           
    )
  )
)

