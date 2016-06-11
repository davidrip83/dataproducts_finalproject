# Libaries
library(shiny)

# Shiny page
shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("Pythagorean Theorem"),
        
        sidebarPanel(
            numericInput('Input_x', 'Length of side x', 2),
            numericInput('Input_y', 'Length of side y', 2),
            p('Do not forget to press Submit after changing the value'),
            submitButton('Submit')
        ),
        mainPanel(
            h2('Pythagorean theorem'),
            p('This  Shiny application calculates the length of a third side of a right triangle. The triangle has three sides with length x, y and z. Given x and y, this Shiny app calculcates the length z of the third side'), 
            p('The Pythagorean theorem only works for right triangles, which means that one angle is a right angle (that is, a 90-degree angle)'), 
            h4('You entered for x'),
            verbatimTextOutput("Input_x"),
            h4('You entered for y'),
            verbatimTextOutput("Input_y"),
            h4('The length of z is'),
            verbatimTextOutput("Output_z"),
            p('This is a visualization of the right triangle'),
            plotOutput('chart')
        )
    )
)