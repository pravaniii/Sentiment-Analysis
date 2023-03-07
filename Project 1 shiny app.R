library(shiny)
library(ggplot2)
library(tidyverse)
data(Consumer_Complaints.rds)

ui <- fluidpage(
  titlePanel("Consumer Complaints - Financial Products"), 
  
  sidebarLayout(
    
    sidebarPanel(
      
      sidebarInput( inputId = "Product", 
                    label = "Number of Product:", 
                    min = 1, 
                    max = 50, 
                    value = 30)
      
    )
  )
)

server <- function(input, output) {}


shinyapp( ui = ui, server = server)
                
                
                    