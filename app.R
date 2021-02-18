# Loading R packages
library(shiny)
library(shinythemes)


  # Defining UI
  ui <- fluidPage(theme = shinytheme("slate"),
    navbarPage(
      # Theme = "slate"
      "What is Your Name?",
      tabPanel("Navbar 1",
               sidebarPanel(
                 tags$h3("Input:"),
                 textInput("txt1", "First Name:", ""),
                 textInput("txt2", "Last Name:", ""),
                 
               ), # sidebarPanel
               mainPanel(
                            h1("Your Name:"),
                            
                            verbatimTextOutput("txtout"),

               ) # mainPanel
               
      ), # Navbar 1, tabPanel
      tabPanel("Navbar 2", "This panel is left blank"),
      tabPanel("Navbar 3", "This panel is  left blank")
  
    ) # navbarPage
  ) # fluidPage

  
  # Defining server function  
  server <- function(input, output) {
    
    output$txtout <- renderText({
      paste( input$txt1, input$txt2, sep = " " )
    })
  } # server
  

  # Shiny object
  shinyApp(ui = ui, server = server)
