### load the original data
myurl <- "https://raw.githubusercontent.com/Hongxia555/UR4A_project/master/german.data.csv"
credit <- read.table(file=myurl, header=T, sep = ',')
# change the column names
names(credit) <- c("AccountBalance", "DurationInMonth", "PaymentStatus"
                   , "PurposeOfCredit", "CreditAmount", "SavingOrBonds"
                   , "LengthOfCurrentEmployment", "Installment", "SexAndMaritalStatus"
                   , "Guarantor", "DurationInCurrentAddress", "MostValuableAsset"
                   , "Age", "OtherInstallmentPlan", "Housing", "NoOfCreditsAtBank"
                   , "Occupation", "NoOfDependents", "Telephone", "ForeignWorker"
                   , "CreditEvaluation")

### import packages
library(shiny)
library(rgl)
library(useful)
library(ggplot2)
options(rgl.printRglwidget = TRUE)

### convert factor variables into factor variables
# convert variable AccountBalance
credit$accountBalance[credit$AccountBalance=="A11"] <- 1
credit$accountBalance[credit$AccountBalance=="A12"] <- 2
credit$accountBalance[credit$AccountBalance=="A13"] <- 3
credit$accountBalance[credit$AccountBalance=="A14"] <- 4
credit$accountBalance <- as.factor(credit$accountBalance)
credit$AccountBalance <- credit$accountBalance
credit$accountBalance <- NULL
# convert variable PaymentStatus
credit$paymentStatus[credit$PaymentStatus=="A30"] <- 1
credit$paymentStatus[credit$PaymentStatus=="A31"] <- 2
credit$paymentStatus[credit$PaymentStatus=="A32"] <- 3
credit$paymentStatus[credit$PaymentStatus=="A33"] <- 4
credit$paymentStatus[credit$PaymentStatus=="A34"] <- 5
credit$paymentStatus <- as.factor(credit$paymentStatus)
credit$PaymentStatus <- credit$paymentStatus
credit$paymentStatus <- NULL
# convert variable PurposeOfCredit
credit$purposeOfCredit[credit$PurposeOfCredit=='A40'] <- 1
credit$purposeOfCredit[credit$PurposeOfCredit=='A41'] <- 2
credit$purposeOfCredit[credit$PurposeOfCredit=='A42'] <- 3
credit$purposeOfCredit[credit$PurposeOfCredit=='A43'] <- 4
credit$purposeOfCredit[credit$PurposeOfCredit=='A44'] <- 5
credit$purposeOfCredit[credit$PurposeOfCredit=='A45'] <- 6
credit$purposeOfCredit[credit$PurposeOfCredit=='A46'] <- 7
credit$purposeOfCredit[credit$PurposeOfCredit=='A47'] <- 8
credit$purposeOfCredit[credit$PurposeOfCredit=='A48'] <- 9
credit$purposeOfCredit[credit$PurposeOfCredit=='A49'] <- 10
credit$purposeOfCredit[credit$PurposeOfCredit=='A410'] <- 11
credit$purposeOfCredit <- as.factor(credit$purposeOfCredit)
credit$PurposeOfCredit <- credit$purposeOfCredit
credit$purposeOfCredit <- NULL
# convert the variable SavingOrBonds
credit$savingOrBonds[credit$SavingOrBonds=='A61'] <- 1
credit$savingOrBonds[credit$SavingOrBonds=='A62'] <- 2
credit$savingOrBonds[credit$SavingOrBonds=='A63'] <- 3
credit$savingOrBonds[credit$SavingOrBonds=='A64'] <- 4
credit$savingOrBonds[credit$SavingOrBonds=='A65'] <- 5
credit$savingOrBonds <- as.factor(credit$savingOrBonds)
credit$SavingOrBonds <- credit$savingOrBonds
credit$savingOrBonds <- NULL
# convert the variable LengthOfCurrentEmployment
credit$lengthOfCurrentEmployment[credit$LengthOfCurrentEmployment=="A71"] <- 1
credit$lengthOfCurrentEmployment[credit$LengthOfCurrentEmployment=="A72"] <- 2
credit$lengthOfCurrentEmployment[credit$LengthOfCurrentEmployment=="A73"] <- 3
credit$lengthOfCurrentEmployment[credit$LengthOfCurrentEmployment=="A74"] <- 4
credit$lengthOfCurrentEmployment[credit$LengthOfCurrentEmployment=="A75"] <- 5
credit$lengthOfCurrentEmployment <- as.numeric(credit$lengthOfCurrentEmployment)
credit$LengthOfCurrentEmployment <- credit$lengthOfCurrentEmployment
credit$lengthOfCurrentEmployment <- NULL
# convert the variable SexAndMaritalStatus
credit$sexAndMaritalStatus[credit$SexAndMaritalStatus=="A91"] <- 1
credit$sexAndMaritalStatus[credit$SexAndMaritalStatus=="A92"] <- 2
credit$sexAndMaritalStatus[credit$SexAndMaritalStatus=="A93"] <- 3
credit$sexAndMaritalStatus[credit$SexAndMaritalStatus=="A94"] <- 4
credit$sexAndMaritalStatus[credit$SexAndMaritalStatus=="A95"] <- 5
credit$sexAndMaritalStatus <- as.factor(credit$sexAndMaritalStatus)
credit$SexAndMaritalStatus <- credit$sexAndMaritalStatus
credit$sexAndMaritalStatus <- NULL
# convert the variable Guarantor
credit$guarantor[credit$Guarantor=="A101"] <- 1
credit$guarantor[credit$Guarantor=="A102"] <- 2
credit$guarantor[credit$Guarantor=="A103"] <- 3
credit$guarantor <- as.factor(credit$guarantor)
credit$Guarantor <- credit$guarantor
credit$guarantor <- NULL
# convert the variable MostValuableAsset
credit$mostValuableAsset[credit$MostValuableAsset=='A121'] <- 1
credit$mostValuableAsset[credit$MostValuableAsset=='A122'] <- 2
credit$mostValuableAsset[credit$MostValuableAsset=='A123'] <- 3
credit$mostValuableAsset[credit$MostValuableAsset=='A124'] <- 4
credit$mostValuableAsset <- as.factor(credit$mostValuableAsset)
credit$MostValuableAsset <- credit$mostValuableAsset
credit$mostValuableAsset <- NULL
# convert the variable OtherInstallmentPlan
credit$otherInstallmentPlan[credit$OtherInstallmentPlan=='A141'] <- 1
credit$otherInstallmentPlan[credit$OtherInstallmentPlan=='A142'] <- 2
credit$otherInstallmentPlan[credit$OtherInstallmentPlan=='A143'] <- 3
credit$otherInstallmentPlan <- as.factor(credit$otherInstallmentPlan)
credit$OtherInstallmentPlan <- credit$otherInstallmentPlan
credit$otherInstallmentPlan <- NULL
# convert the variable Housing
credit$housing[credit$Housing=='A151'] <- 1
credit$housing[credit$Housing=='A152'] <- 2
credit$housing[credit$Housing=='A153'] <- 3
credit$housing <- as.factor(credit$housing)
credit$Housing <- credit$housing
credit$housing <- NULL
# convert the variable Occupation
credit$occupation[credit$Occupation=='A171'] <- 1
credit$occupation[credit$Occupation=='A172'] <- 2
credit$occupation[credit$Occupation=='A173'] <- 3
credit$occupation[credit$Occupation=='A174'] <- 4
credit$occupation <- as.factor(credit$occupation)
credit$Occupation <- credit$occupation
credit$occupation <- NULL
# convert the variable Telephone
credit$telephone[credit$Telephone=='A191'] <- 1
credit$telephone[credit$Telephone=='A192'] <- 2
credit$telephone <- as.factor(credit$telephone)
credit$Telephone <- credit$telephone
credit$telephone <- NULL
# convert the variable ForeignWorker
credit$foreignWorker[credit$ForeignWorker=='A201'] <- 1
credit$foreignWorker[credit$ForeignWorker=='A202'] <- 2
credit$foreignWorker <- as.factor(credit$foreignWorker)
credit$ForeignWorker <- credit$foreignWorker
credit$foreignWorker <- NULL

###convert CreditEvaluation into Good:1 and Bad:0
credit$CreditEvaluation[credit$CreditEvaluation==2] <-0 
credit$CreditEvaluation <- as.factor(credit$CreditEvaluation)

###set train data and test data
smp_size <- floor(0.75 * nrow(credit))
# set the seed to make the partition reproductible
set.seed(107)
train_credit <- sample(seq_len(nrow(credit)), size = smp_size)
train <- credit[train_credit, ]
test <- credit[-train_credit, ]
run <- sample(seq_len(nrow(credit)), size = 1)
run_credit <- credit[run, ]

#Logit
logit <- glm(CreditEvaluation ~ . 
             , data=train, family=binomial)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  ##ClusterPlot
  output$ClusterPlot <- renderPlot({
    creditTrain <- credit[, which(names(credit) != "CreditEvaluation")]
    if  (input$AccountBalance1==FALSE)
      creditTrain <- credit[, which(names(credit) != "AccountBalance")]
    if  (input$DurationInMonth1==FALSE)
      creditTrain <- credit[, which(names(credit) != "DurationInMonth")]
    if  (input$PurposeOfCredit1==FALSE)
      creditTrain <- credit[, which(names(credit) != "PurposeOfCredit")]
    if  (input$DurationInCurrentAddress1==FALSE)
      creditTrain <- credit[, which(names(credit) != "DurationInCurrentAddress")]
    if  (input$Age1==FALSE)
      creditTrain <- credit[, which(names(credit) != "Age")]
    if  (input$NoOfCreditsAtBank1==FALSE)
      creditTrain <- credit[, which(names(credit) != "NoOfCreditsAtBank")]
    
    # creditTrain <- credit[, which(names(credit) != "CreditEvaluation")]
    # set the numbers of clustering
    creditBest <- FitKMeans(creditTrain, max.clusters=20, nstart=10, seed=278613)
    k <- creditBest[creditBest$AddCluster != "TRUE", ][1,1]
    # perform k-means clustering
    # two dimensional clustering
    creditK <- kmeans(creditTrain, k)
    plot(creditK, data=credit, class="CreditEvaluation")
  })
    
   
  
  ##Prediction Plot
   output$PredictionPlot <- renderPlot({
     
     costOfgood <- input$BadCustomer
     costOfbad <- input$GoodCustomer
     
     #Optimization
     x <- 0 
     finalresults <- NULL
     while(x < 0.99) {
       x <- x + 0.01
       pLogit <- predict(logit, type="response",train)      # predicted probabilities
       yLogit <- ifelse(pLogit>=x,"Good","Bad")      # actual class labels
       results = data.frame(train$CreditEvaluation, yLogit, pLogit)
       colnames(results) <- c("y","yLogit","pLogit")
       # head(results)
       
       cm <- table(results$yLogit, results$y)
       if(nrow(cm)==2){cost <- cm[[1,2]]*costOfbad + cm[[2,1]]*costOfgood}
       else{cost <-cm[[1,1]]*costOfbad}
       accuracy <- sum(diag(cm))/sum(cm)
       finalresults = rbind(finalresults, data.frame(x,cost, accuracy))
       # print(finalresults)
       if (x == 1) break
     }
     
     # print(finalresults)
     
     #entrydata
     library(ggplot2)
     ggplot(finalresults, aes(x = finalresults$x, y = finalresults$cost)) + geom_line() + geom_point()
     
   })
  
  
  ##PredictionTable
   output$PredictionTable <- renderTable({
      
      
      
      # save input to a dataframe
      
      AccountBalance <- as.factor(input$AccountBalance)
      DurationInMonth <- as.integer(input$DurationInMonth)
      PaymentStatus <- as.factor(input$PaymentStatus)
      PurposeOfCredit <- as.factor(input$PurposeOfCredit) 
      CreditAmount <- as.integer(input$CreditAmount)
      SavingOrBonds <- as.factor(input$SavingOrBonds)
      LengthOfCurrentEmployment <- as.numeric(input$LengthOfCurrentEmployment) 
      Installment <- as.integer(input$Installment)
      SexAndMaritalStatus <- as.factor(input$SexAndMaritalStatus)
      Guarantor <- as.factor(input$Guarantor)
      DurationInCurrentAddress <- as.integer(input$DurationInCurrentAddress)
      MostValuableAsset <- as.factor(input$MostValuableAsset)
      Age <- as.integer(input$Age)
      OtherInstallmentPlan <- as.factor(input$OtherInstallmentPlan)
      Housing <- as.factor(input$Housing) 
      NoOfCreditsAtBank <- as.integer(input$NoOfCreditsAtBank)
      Occupation <- as.factor(input$Occupation)
      NoOfDependents <- as.integer(input$NoOfDependents)
      Telephone <- as.factor(input$Telephone)
      ForeignWorker <- as.factor(input$ForeignWorker)
      
      dataEntry <- data.frame(AccountBalance,
                              DurationInMonth,
                              PaymentStatus,
                              PurposeOfCredit,  
                              CreditAmount, 
                              SavingOrBonds, 
                              LengthOfCurrentEmployment,  
                              Installment, 
                              SexAndMaritalStatus, 
                              Guarantor, 
                              DurationInCurrentAddress,
                              MostValuableAsset,
                              Age,
                              OtherInstallmentPlan,
                              Housing,
                              NoOfCreditsAtBank,
                              Occupation,
                              NoOfDependents,
                              Telephone,
                              ForeignWorker)
      
      names(dataEntry) <- c("AccountBalance", "DurationInMonth", "PaymentStatus"
                         , "PurposeOfCredit", "CreditAmount", "SavingOrBonds"
                         , "LengthOfCurrentEmployment", "Installment", "SexAndMaritalStatus"
                         , "Guarantor", "DurationInCurrentAddress", "MostValuableAsset"
                         , "Age", "OtherInstallmentPlan", "Housing", "NoOfCreditsAtBank"
                         , "Occupation", "NoOfDependents", "Telephone", "ForeignWorker"
                         )
      
  
      #Prodiction
      
      i <- input$i
      
      pLogit <- predict(logit, type="response", dataEntry)      # predicted probabilities
      yLogit <- ifelse(pLogit>=i,"Good","Bad")      # actual class labels
      results = data.frame(yLogit, pLogit)
      colnames(results) <- c("Recommended Classification","Predicted Probability of Good")
      head(results)
      
      
      
    })
    
})
