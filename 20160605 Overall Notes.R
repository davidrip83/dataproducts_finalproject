# Shiny
## Set wd and libaries
setwd("~/Google Drive/Old laptop/Docs/rclass/dataproducts/final product")

library("shiny", lib.loc="~/Library/R/3.1/library")

## Get to wd to run app
setwd("~/Google Drive/Old laptop/Docs/rclass/dataproducts/final product/Shiny")

runApp()

## Publish shiny app
library(rsconnect)
rsconnect::deployApp('~/Google Drive/Old laptop/Docs/rclass/dataproducts/final product/Shiny')

## URL: https://davidrip83.shinyapps.io/Shiny/

# Slidify
## Set wd and libaries
setwd("~/Google Drive/Old laptop/Docs/rclass/dataproducts/final product/Slidify")

library("slidify", lib.loc="~/Library/R/3.1/library")

## Set up deck
author("Reproducible Pitch")

## Publish slidify deck
setwd("~/Google Drive/Old laptop/Docs/rclass/dataproducts/final product/Slidify/Reproducible Pitch")

slidify("index.Rmd")

browseURL("index.html")


# Libaries
library(shiny)

# Function
Length_z <- function(Input_x) Input_x^2

# Shiny server
shinyServer(
    function(input, output) {
        input$Input_x <- renderPrint({input$Input_x})
        output$Output_z <- renderPrint({Length_z(input$Input_x)})
    }
)
