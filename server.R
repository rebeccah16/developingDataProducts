library(shiny)
lowerbound <- function(age) round((age / 2)+7)
upperbound <- function(age) round((age-7)*2)

shinyServer(
  function(input, output) {
    x <- 5:100
      y <-(x/2)+7
    y2 <-(x-7)*2
    output$distPlot <- renderPlot({
      plot(x,y,main = 'Change in lower bound age over time',type = 'l',xlab = 'My Age', ylab='Minimum acceptible dating age') })
 output$distPlot2 <- renderPlot({
      plot(x,y2,main='Change in upper bound age over time',type = 'l',xlab= 'My Age',ylab='Maximum acceptible dating age') })
    output$inputValue <- renderPrint({input$myage})
    output$lowerprediction <- renderPrint({lowerbound(input$myage)})
    output$upperprediction <- renderPrint({upperbound(input$myage)})
  }
)
