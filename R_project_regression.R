### load the original data
myurl <- "https://raw.githubusercontent.com/Hongxia555/UR4A_project/master/german.data.csv"
credit <- read.table(file=myurl, header=T, sep = ',')
# change the column names
names(credit) <- c("AccountBalance", "DurationInMonth", "PaymentStatus"
                   , "PurposeOfCredit", "CreditAmount", "Saving.Bonds"
                   , "LengthOfCurrentEmployment", "Installment.", "SexAndMaritalStatus"
                   , "Guarantor", "DurationInCurrentAddress", "MostValuableAsset"
                   , "Age", "OtherInstallmentPlan", "Housing", "NoOfCreditsAtBank"
                   , "Occupation", "NoOfDependents", "Telephone", "ForeignWorker"
                   , "CreditEvaluation")
str(credit)
### convert factor variables into numeric variables
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
# convert the variable Saving/Bonds
credit$`saving.Bonds`[credit$`Saving.Bonds`=='A61'] <- 1
credit$`saving.Bonds`[credit$`Saving.Bonds`=='A62'] <- 2
credit$`saving.Bonds`[credit$`Saving.Bonds`=='A63'] <- 3
credit$`saving.Bonds`[credit$`Saving.Bonds`=='A64'] <- 4
credit$`saving.Bonds`[credit$`Saving.Bonds`=='A65'] <- 5
credit$`saving.Bonds` <- as.factor(credit$`saving.Bonds`)
credit$`Saving.Bonds` <- credit$`saving.Bonds`
credit$`saving.Bonds` <- NULL

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




### figure out which variables will be used to do clustering
# create the subdataset goodCredit and badCredit.  1 is good, while 2 is bad.
goodCredit <- subset(credit, credit$CreditEvaluation=="1")
badCredit <- subset(credit, credit$CreditEvaluation=='2')
credit$CreditEvaluation<-as.factor(credit$CreditEvaluation)



### split the data into train and test dataset
# 75% of the sample size
smp_size <- floor(0.75 * nrow(credit))
# set the seed to make the partition reproductible
set.seed(107)
train_credit <- sample(seq_len(nrow(credit)), size = smp_size)
train <- credit[train_credit, ]
test <- credit[-train_credit, ]



#======randomforest===========#

#ramdomforest test
library(randomForest)
set.seed(111)
ntest<-sample(1:nrow(credit),0.25*nrow(credit),replace=F)
train<-credit[-ntest,]
test<-credit[ntest,]
model.forest <-randomForest(CreditEvaluation ~. , data = train,importance=TRUE,proximity=TRUE)
pre.forest=predict(model.forest, test)
table(pre.forest,test$CreditEvaluation)
table<-table(pre.forest,test$CreditEvaluation)
sum(diag(table))/sum(table)
(table[[2,1]]*5+table[[1,2]]*1)
importance(model.forest)
varImpPlot(model.forest)

#============KNN===================#
#knn train
library(caret)
knn.model1 = knn3(CreditEvaluation ~ .,data = train, k = 7) 
knn.predict1 = predict(knn.model1,test,type = "class") 
table(knn.predict1,test$CreditEvaluation)
mean(knn.predict1 == test$CreditEvaluation)

#==============GBM=================#

library(caret)
ctrl = trainControl(method = "repeatedcv", number = 5, repeats = 5)
set.seed(107)
#install.packages('e1071', dependencies=TRUE)
m_gbm = train(CreditEvaluation ~., data=train, method = "gbm",  metric = "Kappa", trControl = ctrl)
gbm.predict = predict(m_gbm,test)
table(gbm.predict,test$CreditEvaluation)
(accurancy2 = mean(gbm.predict == test$CreditEvaluation))

#=======LogisticRegression=========#

logit <- glm(CreditEvaluation ~ . 
             , data=train, family=binomial)
pLogit <- predict(logit, type="response",test)      
yLogit <- ifelse(pLogit>=0.5,"Good","Bad")      
results = data.frame(test$CreditEvaluation, yLogit, pLogit)
colnames(results) <- c("y","yLogit","pLogit")
(cm <- table(results$yLogit, results$y))
(accuracy <- sum(diag(cm))/sum(cm))

