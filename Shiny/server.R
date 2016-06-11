# Libaries
library(shiny)
# library(googleVis)

# Function
pythagorean <- function(Input_x, Input_y) sqrt(Input_x^2 + Input_y^2)

# Shiny server
shinyServer(
    function(input, output) {
        output$Input_x <- renderPrint({input$Input_x})
        output$Input_y <- renderPrint({input$Input_y})
        output$Output_z <- renderPrint({pythagorean(input$Input_x, input$Input_y)})
    }
)