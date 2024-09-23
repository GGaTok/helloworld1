#shinyapp
library(shiny)

# User Interface
ui <- fluidPage(
  titlePanel("Boxplot Example"),
  
  # Sidebar layout with input and output definitions
  sidebarLayout(
    
    # Sidebar panel for inputs
    sidebarPanel(
      selectInput("variable", 
                  "Select a variable for the Boxplot:", 
                  choices = c("mpg", "hp", "wt", "qsec")),
      hr(),
      helpText("Create boxplots for the selected variable from mtcars dataset.")
    ),
    
    # Main panel for displaying outputs
    mainPanel(
      plotOutput("boxPlot")
    )
  )
)

library(shiny)

# Server logic
server <- function(input, output) {
  
  # Create the boxplot object based on user input
  output$boxPlot <- renderPlot({
    # Select the variable from input
    selected_var <- input$variable
    
    # Create boxplot
    boxplot(mtcars[[selected_var]], 
            main = paste("Boxplot of", selected_var),
            ylab = selected_var, 
            col = "lightblue")
  })
}

library(shiny)

# Define UI for application that draws a boxplot
ui <- fluidPage(
  titlePanel("Boxplot Example"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("variable", 
                  "Select a variable for the Boxplot:", 
                  choices = c("mpg", "hp", "wt", "qsec")),
      hr(),
      helpText("Create boxplots for the selected variable from mtcars dataset.")
    ),
    
    mainPanel(
      plotOutput("boxPlot")
    )
  )
)

# Define server logic to create boxplot
server <- function(input, output) {
  
  output$boxPlot <- renderPlot({
    selected_var <- input$variable
    boxplot(mtcars[[selected_var]], 
            main = paste("Boxplot of", selected_var),
            ylab = selected_var, 
            col = "lightblue")
  })
}

# Run the application 
shinyApp(ui = ui, server = server)

