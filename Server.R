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
    label = "Select a Stock:",
    choices = unique(budget_stock)
    )
  })
 
  

  
}