ui <- fluidPage(
    sliderInput(inputId = "num", label = "Select the value", min = 1, max = 100, value = 20),
    plotOutput(outputId = "hist")
)
server <- function(input, output) {
    output$hist <- renderPlot(hist(x = rnorm(n = input$num, mean = 10 , sd = 5)))
}

shinyApp(ui = ui, server = server)