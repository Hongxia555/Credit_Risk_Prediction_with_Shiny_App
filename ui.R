library(shiny)

shinyUI( navbarPage(title=strong("SMART LOAN"),
        # Tab for introduction
        tabPanel("Introduction",
                 h1(strong("Predict credit risk level of customers")),
                 hr(),
                 p(strong("Overview")),
                 p("This app is designed to help money lending companies to decide whether to give a loan to a customer or not."),
                 br(),
                 p(strong("Designed by:"), "Bubble Tea Rocks"),
                 p(strong("Team members:"), "Jou Tzu (Rose) Kao | Rong (Alice) Liao | Hongxia Shi | Shenyang Yang"),
                 p(strong("Contact Information:"),"shi395@purdue.edu"),
                 
                 # imageOutput("logo")
                 img(src="bubble.png")
                     #href = "~/Dropbox/Study/Purdue/BAIM/Fall/MGMT590 Using R for Analytics/Project/")
                     # href = "https://drive.google.com/file/d/0B3epwLPCymTtZER6cXpCS25MdGs/view?usp=sharing")
                 ),
        
  
      #Tab for company risk preference
      tabPanel("Risk Preference",
               h1(strong("Before prediction, select your risk preference")),
               hr(),
               # input - company risk preference
               titlePanel("Input - Your Risk Evaluation"),
               p("Please evaluate the cost based on the following two kinds of risk."),
               fluidRow(
                 column(5,
                        #Input risk preference
                        sliderInput("GoodCustomer", "(i) good customer was mistakely predicted as bad customer - you lose a good customer", min=1, max=10, value = 5),
                        sliderInput("BadCustomer", "(i) bad customer was mistakely predicted as good customer - you get a bad customer", min=1, max=10, value = 5),
                        submitButton("Submit", icon("refresh"), width = 100 )
                 )
               ),
               
               # Output
               br(),
               hr(),
               titlePanel("Output - Recommended Cut-off Point for Good/Bad Customer"), 
               br(),
               mainPanel(
                 plotOutput("PredictionPlot"), 
                 br(), br(), br()),   
               
               # input - selection of cutoff
                 column(12,
                        #Input risk preference
                        sliderInput("i", "Please input the cutoff point to determine Good/Bad Customer. 
                                    We suggest you to select point where the cost is the lowest.", 
                                    min=0.01, max=0.99, value = 0.5)),
                 br(),br()
               ),
        
        
      # Tab for prediction
      tabPanel("Prediction",
             h1(strong("Predict credit risk level of customers")),
             hr(),
             
             # input - customer info
             # Sidebar with a slider input for number of bins 
             titlePanel("Input - Customer Information"),
             fluidRow(
                column(5,
                 # Input attribute 1 Status of Existing checking account
                 selectInput( "AccountBalance", "Status of existing checking account",
                             c("...< 0 DM" = 1, "0 <= ... <= 200 DM" = 2, "... >= 200 DM" = 3, "no checking account" = 4),
                             selected = 4), 
                 # Input attribute 2 Status of Duration in month
                 numericInput("DurationInMonth", "Months until credit due date", 24, min=0), 
                 # Input attribute 3 Credit history
                 selectInput("PaymentStatus", "Credit history", 
                             c("no credits taken/all credits paid back duly" = 1, "all credits at this back paid back duly" = 2,
                               "existing credits paid back duly till now" = 3, "delay in paying off in the past" = 4, "critical account/other credits existing (not at this bank)" = 5),
                             selected = 3),
                 # Input attribute 4 Purpose
                 selectInput("PurposeOfCredit", "Purpose", 
                             c("car(new)"=1, "car(used)"=2, "furniture/equipment"=3, "radio/television"=4, "domestic appliances"=5,
                               "repairs"=6, "eucation"=7, "vacation"=8, "retraining"=9, "business"=10, "others"=11),
                             selected=4),
                 # Input attribute 5 Credit amount
                 numericInput("CreditAmount", "Credit amount", 3271),
                 # Input attribute 6 Savings account/bonds
                 selectInput("SavingOrBonds", "Savings accountOrbonds",
                             c("...< 100 DM"=1, "100 <= ... < 500 DM"=2, "500 <= ... < 1000 DM"=3, "...>=1000 DM"=4,"unknown/no savings account"=5),
                             selected=1),
                 # Input attribute 7 Present employment since
                 selectInput("LengthOfCurrentEmployment","Present employment since",
                             c("unemployed"=1, "... < 1 year"=2, "1 <= ... < 4 years"=3, "4 <= ... < 7 years"=4, "... >= 7 years"=5),
                             selected=3),
                 # Input attribute 8 Installment rate in percentage of disposable income
                 selectInput("Installment", "Installment rate in percentage of disposable income (level from 1 to 4)", 
                             c("1"=1, "2"=2, "3"=3, "4"=4), selected=2),
                 # Input attribute 9 Personal status and sex
                 selectInput("SexAndMaritalStatus", "Personal status and sex",
                             c("male: divorced/separated"=1, "femaile: divorced/separated/married"=2, "male: single"=3,
                               "male: married/widowed"=4, "female: single"=5),
                             selected=3),
                 # Input attribute 10 Other debtors/guarantors
                 selectInput("Guarantor","Other debtors/guarantors",
                             c("none"=1, "co-applicant"=2,"guarantor"=3),
                             selected=1)),
               column(5,
                 # Input attribute 11 Present residence since
                 numericInput("DurationInCurrentAddress","Duration in current address", 3, min=0),
                 # Input attribute 12 Property
                 selectInput("MostValuableAsset","Property",
                             c("real estate"=1, "building society savings agreement/life insurance"=2, "car or other"=3, "unknown/no property"=4),
                             selected=3),
                 # Input attribute 13 Age in years
                 numericInput("Age", "Age in years", 35, min=18),
                 # Input attribute 14 Other installment plans
                 selectInput("OtherInstallmentPlan", "Other installment plans",
                             c("bank"=1, "stores"=2, "none"=3),
                             selected=3),
                 # Input attribute 15 Housing
                 selectInput("Housing","Housing",
                             c("rent"=1, "own"=2, "for free"=3),
                             selected=2),
                 # Input attribute 16 Number of existing credits at this bank
                 numericInput("NoOfCreditsAtBank", "Number of existing credit accounts at this bank", 1, min=0),
                 # Input attribute 17 Job
                 selectInput("Occupation","Job",
                             c("unemployed/unskilled--non-resident"=1, "unskilled-resident"=2, "skilled employee/official"=3,
                               "management/self-employed/highly qualified employee/officer"=4),
                             selected=3),
                 # Input attribute 18 Number of perople being liable to provide maintenance for 
                 numericInput("NoOfDependents","Number of people being liable to provide maintenance for", 1, min=0),
                 # Input attribute 19 Telephone
                 selectInput("Telephone","Telephone", c("none"=1,"yes,registered under the customers name"=2), selected=1),
                 # Input attribute 20 foreign worker
                 selectInput("ForeignWorker","Foreign worker", c("yes"=1, "no"=2), selected=1),
                 submitButton("Submit", icon("refresh"), width = 100 )
               )),
               
              # Output
              br(),
              hr(),
              titlePanel("Output - Recommended Credit Risk Classification"), 
              br(),
              mainPanel(
                tableOutput("PredictionTable"),
              br(), br(), br()   
               )
  ),
  
  
  # Tab for clustering
  tabPanel("Clustering",
           h1(strong("Cluster the data")), hr(),
           titlePanel("Choose the variables:"),
           # Sidebar with a slider input for number of bins 
           sidebarLayout(
             sidebarPanel(
               checkboxInput('AccountBalance1', 'Status of existing checking account',TRUE),
               checkboxInput('DurationInMonth1', 'Duation in month',TRUE),
               checkboxInput('PurposeOfCredit1', 'Purpose',TRUE),
               checkboxInput('DurationInCurrentAddress1', 'Present residence since',TRUE),
               checkboxInput('Age1', 'Age',TRUE),
               checkboxInput('NoOfCreditsAtBank1', 'Number of existing credits at this bank',TRUE),
               submitButton("Submit", icon("refresh"), width = 100 )),
             # Show the ClusterPlot
             mainPanel(
               plotOutput("ClusterPlot")
             )))
))
