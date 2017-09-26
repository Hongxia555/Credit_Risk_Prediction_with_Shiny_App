#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(navbarPage(title=strong("Predict The Risk Level Of Customers"),
  
        # Tab for introduction
        tabPanel("INTRODUCTION",
                 h1(strong("The Risk Level of Customers")),
                 hr(),
                 p(strong("Introduction")),
                 p("This app is used to ...."),
                 br(),
                 p(strong("Team:"), "Bubble Tea Rocks"),
                 p(strong("Team members:"), "Jou Tzu (Rose) Kao | Liao (Alice) Rong | Hongxia Shi | Shenyang Yang"),
                 
                 # imageOutput("logo")
                 img(src="filelist.xml", 
                     href = "./logo.fld")
                     # href = "https://drive.google.com/file/d/0B3epwLPCymTtZER6cXpCS25MdGs/view?usp=sharing")
                 
                 # img(src = "us-cdc.png", alt = "US CDC"),
                 # href = "http://wonder.cdc.gov/cancer.html",
                 # target = "_blank"
           
           
                 ),
                         
        # Tab for prediction
        tabPanel("Prediction",
                 h1(strong("Pridict The Risk Level of Customers")),
                 hr(),
                 titlePanel("Predict The Risk Level Of Customers"),
                 "contents"
                 ),
        
        # Tab for clustering
        tabPanel("Clustering",
                  h1(strong("Cluster the data")),
                  hr(),
                  titlePanel("Predict The Risk Level Of Customers"),
                  
                 # Sidebar with a slider input for number of bins 
                  sidebarLayout(
                    sidebarPanel(
                      # Choose first column for x axis of 3D visulization
                      selectInput(
                        "column1", "Choose x axis",
                        c("Risk level" = "all"),
                        selected = "Risk level"), 
                      
                      # Choose second column for y axis of 3D visulization
                      selectInput(
                        "column2", "Choose y axis",
                        c("Status of existing checking account" = "Status", "Duration in month" = "Duration"),
                        selected = "Status"), 
                      
                      
                      # Choose third column for z axis of 3D visulization
                      selectInput(
                        "column3", "Choose z axis",
                        c("Status of existing checking account" = "Status", "Duration in month" = "Duration"),
                        selected = "Duration"), 
                      
                      
                      
                      
                      sliderInput("bins",
                                   "Number of bins:",
                                   min = 1,
                                   max = 50,
                                   value = 30),
                      
                      # Generate the logo image
                      br(), br(), br(), br(),
                      
                              a("the United States CDC",
                          href = "http://wonder.cdc.gov/cancer.html",
                          target = "_blank"),
                      a(img(src = "us-cdc.png", alt = "US CDC"),
                        href = "http://wonder.cdc.gov/cancer.html",
                        target = "_blank")
            ),
            
            # Show a plot of the generated distribution
            mainPanel(
               plotOutput("distPlot")
      )
    )
  )
))
