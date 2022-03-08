fluidPage(
  titlePanel("Stock Picker"),
  
  fluidRow(

    column(4,
           
           sliderInput("slider1", label = h3("Available Budget"), min = floor(min(stocks$close)), 
                       max = ceiling(max(stocks$close)), value = c(200, 1000)),
           
           textOutput("SliderText"),
           uiOutput("dropdown")
    )
    
  )
)

