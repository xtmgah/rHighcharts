library(shiny)
library(rHighcharts)

# Include
# a <- tempfile(tmpdir = ".")
# write(javascript(), a)

# Define UI for application that plots random distributions 
shinyUI(pageWithSidebar(
    
    # Application title
    headerPanel("Highchart.js"),
    
    # Sidebar with a slider input for number of observations
    sidebarPanel(
        sliderInput("obs", 
                    "Number of observations:", 
                    min = 0, 
                    max = 1000, 
                    value = 500)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
#         includeHTML(a),
        jsOutput(),
        htmlOutput("columnchart"),
        htmlOutput("barchart")
    )
))