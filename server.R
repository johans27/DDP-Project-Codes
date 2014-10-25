library(shiny)

OzoneEstim <- function(x1, x2) -71.03 + (1.84*x1) - (3.06*x2)

shinyServer(
  function(input, output) {
    output$x1Value <- renderPrint({input$x1})
    output$x2Value <- renderPrint({input$x2})
    output$prediction <- renderPrint({OzoneEstim(input$x1,input$x2)})
  }
)