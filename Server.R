function(input, output, session) {
  
  # You can access the values of the widget with input$slider1, e.g.
  output$range <- renderPrint({ input$slider1 })
  
  stock_range <- reactive({
    cbind(input$slider1[1], input$slider1[2])
    })
  
  output$SliderText <- renderText(stock_range())
  
  output$dropdown <- renderUI({
    budget_stock <- stocks$symbol[stocks$close >= input$slider1[1] & stocks$close <= input$slider1[2]]
    
    selectInput(
    inputId = "stock_selected",
    label = h3("Select a Stock:"),
    choices = unique(budget_stock)
    )
   

  })
  
  output$stockplot <- renderPlot({
     symbol <- input$stock_selected
    
    filtered_stock  <- stocks[stocks$symbol == input$stock_selected & stocks$date <= input$daterange[2] & stocks$date >= input$daterange[1],]

    ggplot(filtered_stock, aes(date, close)) +
      geom_line()+
      labs(title = input$stock_selected)
    
  }) 
  
  output$daterange <- renderPrint({ input$dates })
  
  output$stocktable <- renderTable({
    unique(stocks[stocks$symbol == input$stock_selected, c('city','state','gics_sector')])
  })
    



  }


  

  
