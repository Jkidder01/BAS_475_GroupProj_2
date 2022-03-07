function(input, output) {
  
  # You can access the values of the second widget with input$slider2, e.g.
  output$range <- renderPrint({ input$slider1 })
  
}