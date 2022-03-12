dashboardPage(
  dashboardHeader(title = "Stock Picker"),
  
  dashboardSidebar(
    sidebarMenu(
      menuItem("Prefered Limits", tabName = "dashboard", icon = icon("dashboard")),
      menuItem("Stock Data", tabName = "widgets", icon = icon("th"))
    )
  ),
  dashboardBody(
    tabItems(
      tabItem(tabName = "dashboard",
              fluidRow(
                
                box(
                  sliderInput("slider1", label = h3("Available Budget"), min = floor(min(stocks$close)), 
                                max = ceiling(max(stocks$close)), value = c(200, 1000))
                  ),
                
                box(
                  dateRangeInput("daterange", label = h3("Stock History Range"), start = min(stocks$date), end = max(stocks$date), min = min(stocks$date), max = max(stocks$date))
                ),

              )
      ),
                
tabItem(tabName = "widgets",
     h3("Widgets tab content",
        fluidRow(
          
          box(
            (uiOutput("dropdown"))
          ),
          
          box(
            (plotOutput("stockplot"))
          ),
          
          box(
            box(tableOutput("stocktable"))
          ),
          
        )
     
        ))

      )
    )
  )

