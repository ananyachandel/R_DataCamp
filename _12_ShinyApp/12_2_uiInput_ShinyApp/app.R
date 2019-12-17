ui <- fluidPage(
    actionButton(inputId = "action", label = "Action Button"),
    submitButton(text = "Sumbit Button"),
    checkboxInput(inputId = "singleCheckBox", label = "Single CheckBox", value = TRUE),
    checkboxGroupInput(inputId = "groupCheckBox", label = " Group Check Box", choiceNames = c("Choice 1", "Choice 2"), choiceValues = c(12,50), inline = TRUE),
    dateInput(inputId = "date", label = "date", value = "2019-11-12", format = "dd-MM-yyyy"),
    dateRangeInput(inputId = "dateRange", label = "Date Range", start = "2000-01-01", end = "2019- 12- 31", format = "dd-M-yyyy", separator = " ::to:: ", startview = "year"),
    fileInput(inputId = "file", label = "Select file", multiple = TRUE, placeholder = "Upload the files", buttonLabel = "Click to Browse"),
    numericInput(inputId = "numeric", label = "Numeric", value = 5, min = 1, max = 100),
    passwordInput(inputId = "password", label = "Password", placeholder = "Enter a strong password : xyz@12&iqw"),
    radioButtons(inputId = "radio", label = "Radio", choices = c("Radio 1" = "rad1", "Radio 2" = "rad2"), inline = T),
    selectInput(inputId = "select", label = "Select", choices = c("Select 1" = "sel1", "Select 2" = "sel2"), multiple = T, selected = "sel1"),
    sliderInput(inputId = "num", label = "Select the value", min = 1, max = 50, value = 20),
    sliderInput(inputId = "num2", label = "Select 2 values", min = 1, max = 100, value = c(20,25)),
    textInput(inputId = "text", label = "Text", placeholder = "Input the text here")
)
server <- function(input, output) {}

shinyApp(ui = ui, server = server)

