library(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Optimal age for a dating partner or spouse"),
    
    sidebarPanel(
      numericInput('myage', 'Age(years)', 90, min = 50, max = 200, step = 5),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in a prediction of '),
      verbatimTextOutput("lowerprediction"),
      h4('Test'),
      verbatimTextOutput("upperprediction")
    )
  )
