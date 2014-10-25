library(shiny)

shinyUI(pageWithSidebar(
  
    # Tittle of the application
    headerPanel("Ozone Estimation in ppb"),
    sidebarPanel(
      numericInput('x1', 'Maximum Daily Temperature in Fahrenheit', 0.0, step = .1),
      numericInput('x2', 'Average Wind in mph', 0.0, step = .1),
      submitButton('Submit')
    ),
    mainPanel(
      h2('Results of Prediction'),
      h3('Maximum Daily Temperature Entered'),
      verbatimTextOutput("x1Value"),
      h3('Average Wind Entered'),
      verbatimTextOutput("x2Value"),
      h3('Which resulted in a prediction of'),
      verbatimTextOutput("prediction")
    )
  )
)