
library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
    
    # Application title
    titlePanel("Render fuction"),
    
    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput(inputId = "num",
                        label = "Number of variables:",
                        min = 1,
                        max = 100,
                        value = 30),
            textInput(inputId = "title",
                      label = "Enter the title of the plot",
                      placeholder = "Enter the title here"),
            actionButton(inputId = "submit",
                         label = "Submit")
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            plotOutput(outputId = "distPlot"),
            verbatimTextOutput(outputId = "stats")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    
    # generate random observation of size input$num from ui.R
    xObser <- eventReactive(input$submit,{
        rnorm(n = input$num, mean = 20 , sd = 3)
    })
    output$distPlot <- renderPlot({
        # draw the histogram with the specified number of observation
        # isolate makes title a non reactive input field, changes will only be reflected, once slider value is changed
        hist(x = xObser(), main = isolate(input$title))
    })
    
    output$stats <- renderPrint({
        summary(xObser())
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
