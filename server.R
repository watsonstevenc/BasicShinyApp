library(shiny)
library(UsingR)

time <- function(pace) {pace*26.2} #create a function

shinyServer(
    function(input,output) {
      
      output$inputValue <- renderPrint({input$pace}) #takes glucose to input value
      output$prediction <- renderPrint({time(input$pace)}) #takes glucose and returns function
      
      }
    )