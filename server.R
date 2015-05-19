library(shiny)
lowerbound <- function(age) (age / 2)+7 
upperbound <- function(age) (age-7)*2

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$myage})
    output$lowerprediction <- renderPrint({lowerbound(input$myage)})
    output$upperprediction <- renderPrint({upperbound(input$myage)})
  }
)
