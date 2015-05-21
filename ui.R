library(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Optimal Dating Age Calculator"),
    sidebarPanel(
      helpText("This calculator allows you to enter your age and then calculates the minimum and maximum socially-acceptable age for a dating or marriage partner."),
      h3("Enter your age below to calculate your ideal age range:"),
      
      numericInput('myage', 'Age(years)', 25, min = 0, max = 150, step = 1),
      submitButton('Calculate')
    ),
    mainPanel(
      h3('Your results:'),
      h4('Your current age is:'),
      verbatimTextOutput("inputValue"),
      h4('The minimal socially-acceptible dating age for you is:'),
      verbatimTextOutput("lowerprediction"),
      h4('The maximum sociall-acceptible dating age for you is:'),
      verbatimTextOutput("upperprediction"),
      
      plotOutput("distPlot"),
      
      plotOutput("distPlot2"))
    ))
