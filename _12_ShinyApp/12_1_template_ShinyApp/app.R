library(shiny)

ui <- fluidPage("Hello to Shiny World")

server <- function(input, output) {}

shinyApp(ui = ui, server = server)