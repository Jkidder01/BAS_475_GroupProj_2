function(input, output) {
  
  # You can access the values of the widget with input$slider1, e.g.
  output$range <- renderPrint({ input$slider1 })
  
}