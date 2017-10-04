### load the original data
myurl <- "https://raw.githubusercontent.com/Hongxia555/UR4A_project/master/german.data.csv"
credit <- read.table(file=myurl, header=T, sep = ',')
# change the column names
names(credit) <- c("AccountBalance", "DurationInMonth", "PaymentStatus"
                   , "PurposeOfCredit", "CreditAmount", "Saving/Bonds"
                   , "LengthOfCurrentEmployment", "Installment%", "SexAndMaritalStatus"
                   , "Guarantor", "DurationInCurrentAddress", "MostValuableAsset"
                   , "Age", "OtherInstallmentPlan", "Housing", "NoOfCreditsAtBank"
                   , "Occupation", "NoOfDependents", "Telephone", "ForeignWorker"
                   , "CreditEvaluation")


### convert factor variables into numeric variables
# convert variable AccountBalance
credit$accountBalance[credit$AccountBalance=="A11"] <- 1
credit$accountBalance[credit$AccountBalance=="A12"] <- 2
credit$accountBalance[credit$AccountBalance=="A13"] <- 3
credit$accountBalance[credit$AccountBalance=="A14"] <- 4
credit$accountBalance <- as.numeric(credit$accountBalance)
credit$AccountBalance <- credit$accountBalance
credit$accountBalance <- NULL
# convert variable PaymentStatus
credit$paymentStatus[credit$PaymentStatus=="A30"] <- 1
credit$paymentStatus[credit$PaymentStatus=="A31"] <- 2
credit$paymentStatus[credit$PaymentStatus=="A32"] <- 3
credit$paymentStatus[credit$PaymentStatus=="A33"] <- 4
credit$paymentStatus[credit$PaymentStatus=="A34"] <- 5
credit$paymentStatus <- as.numeric(credit$paymentStatus)
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
credit$purposeOfCredit <- as.numeric(credit$purposeOfCredit)
credit$PurposeOfCredit <- credit$purposeOfCredit
credit$purposeOfCredit <- NULL
# convert the variable Saving/Bonds
credit$`saving/Bonds`[credit$`Saving/Bonds`=='A61'] <- 1
credit$`saving/Bonds`[credit$`Saving/Bonds`=='A62'] <- 2
credit$`saving/Bonds`[credit$`Saving/Bonds`=='A63'] <- 3
credit$`saving/Bonds`[credit$`Saving/Bonds`=='A64'] <- 4
credit$`saving/Bonds`[credit$`Saving/Bonds`=='A65'] <- 5
credit$`saving/Bonds` <- as.numeric(credit$`saving/Bonds`)
credit$`Saving/Bonds` <- credit$`saving/Bonds`
credit$`saving/Bonds` <- NULL
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
credit$sexAndMaritalStatus <- as.numeric(credit$sexAndMaritalStatus)
credit$SexAndMaritalStatus <- credit$sexAndMaritalStatus
credit$sexAndMaritalStatus <- NULL
# convert the variable Guarantor
credit$guarantor[credit$Guarantor=="A101"] <- 1
credit$guarantor[credit$Guarantor=="A102"] <- 2
credit$guarantor[credit$Guarantor=="A103"] <- 3
credit$guarantor <- as.numeric(credit$guarantor)
credit$Guarantor <- credit$guarantor
credit$guarantor <- NULL
# convert the variable MostValuableAsset
credit$mostValuableAsset[credit$MostValuableAsset=='A121'] <- 1
credit$mostValuableAsset[credit$MostValuableAsset=='A122'] <- 2
credit$mostValuableAsset[credit$MostValuableAsset=='A123'] <- 3
credit$mostValuableAsset[credit$MostValuableAsset=='A124'] <- 4
credit$mostValuableAsset <- as.numeric(credit$mostValuableAsset)
credit$MostValuableAsset <- credit$mostValuableAsset
credit$mostValuableAsset <- NULL
# convert the variable OtherInstallmentPlan
credit$otherInstallmentPlan[credit$OtherInstallmentPlan=='A141'] <- 1
credit$otherInstallmentPlan[credit$OtherInstallmentPlan=='A142'] <- 2
credit$otherInstallmentPlan[credit$OtherInstallmentPlan=='A143'] <- 3
credit$otherInstallmentPlan <- as.numeric(credit$otherInstallmentPlan)
credit$OtherInstallmentPlan <- credit$otherInstallmentPlan
credit$otherInstallmentPlan <- NULL
# convert the variable Housing
credit$housing[credit$Housing=='A151'] <- 1
credit$housing[credit$Housing=='A152'] <- 2
credit$housing[credit$Housing=='A153'] <- 3
credit$housing <- as.numberic(credit$housing)
credit$Housing <- credit$housing
credit$housing <- NULL
# convert the variable Occupation
credit$occupation[credit$Occupation=='A171'] <- 1
credit$occupation[credit$Occupation=='A172'] <- 2
credit$occupation[credit$Occupation=='A173'] <- 3
credit$occupation[credit$Occupation=='A174'] <- 4
credit$occupation <- as.numeric(credit$occupation)
credit$Occupation <- credit$occupation
credit$occupation <- NULL
# convert the variable Telephone
credit$telephone[credit$Telephone=='A191'] <- 1
credit$telephone[credit$Telephone=='A192'] <- 2
credit$telephone <- as.numeric(credit$telephone)
credit$Telephone <- credit$telephone
credit$telephone <- NULL
# convert the variable ForeignWorker
credit$foreignWorker[credit$ForeignWorker=='A201'] <- 1
credit$foreignWorker[credit$ForeignWorker=='A202'] <- 2
credit$foreignWorker <- as.numeric(credit$foreignWorker)
credit$ForeignWorker <- credit$foreignWorker
credit$foreignWorker <- NULL


### figure out which variables will be used to do clustering
# create the subdataset goodCredit and badCredit.  1 is good, while 2 is bad.
goodCredit <- subset(credit, credit$CreditEvaluation=="1")
badCredit <- subset(credit, credit$CreditEvaluation=='2')
## first round - check the variables histgram by goodCredit and badCredit
par(mfrow=c(4,5)); 
# first row with goodCredit
hist(goodCredit$AccountBalance); hist(goodCredit$DurationInMonth);
hist(goodCredit$PaymentStatus); hist(goodCredit$PurposeOfCredit);
hist(goodCredit$CreditAmount); 
# second row with badCredit
hist(badCredit$AccountBalance); hist(badCredit$DurationInMonth);
hist(badCredit$PaymentStatus); hist(badCredit$PurposeOfCredit);
hist(badCredit$CreditAmount);
# third row with goodCredit
hist(goodCredit$`Saving/Bonds`); hist(goodCredit$LengthOfCurrentEmployment); 
hist(goodCredit$`Installment%`); hist(goodCredit$SexAndMaritalStatus); 
hist(goodCredit$Guarantor);
# forth row with badCredit
hist(badCredit$`Saving/Bonds`); hist(badCredit$LengthOfCurrentEmployment); 
hist(badCredit$`Installment%`); hist(badCredit$SexAndMaritalStatus); 
hist(badCredit$Guarantor)
## second round - check the variables histgram by goodCredit and badCredit
# first row with goodCredit
hist(goodCredit$DurationInCurrentAddress); hist(goodCredit$MostValuableAsset);
hist(goodCredit$Age); hist(goodCredit$OtherInstallmentPlan);
hist(goodCredit$Housing); 
# second row with badCredit
hist(badCredit$DurationInCurrentAddress); hist(badCredit$MostValuableAsset);
hist(badCredit$Age); hist(badCredit$OtherInstallmentPlan);
hist(badCredit$Housing); 
# third row with goodCredit
hist(goodCredit$NoOfCreditsAtBank); hist(goodCredit$Occupation); 
hist(goodCredit$NoOfDependents); hist(goodCredit$Telephone); 
hist(goodCredit$ForeignWorker);
# forth row with badCredit
hist(badCredit$NoOfCreditsAtBank); hist(badCredit$Occupation); 
hist(badCredit$NoOfDependents); hist(badCredit$Telephone); 
hist(badCredit$ForeignWorker)

# ===== NOTES ===== #
# accordint to the histogram of each variable by goodCredit and badCredit, 
# we found that the following variables can be used for clustering: 
# AccountBalance, DurationInMonth, PurposeOfCredit, DurationInCurrentAddress,
# Age and NoOfCreditsAtBank


### split the data into train and test dataset
# 75% of the sample size
smp_size <- floor(0.75 * nrow(credit))
# set the seed to make the partition reproductible
set.seed(123)
train_credit <- sample(seq_len(nrow(credit)), size = smp_size)
train <- credit[train_credit, ]
test <- credit[-train_credit, ]


# plot 3D clustering
library(rgl)
plot3d(credit$AccountBalance, credit$DurationInMonth, credit$Age, col = as.numeric(credit$CreditEvaluation),
       xlab = "AccountBalance", ylab = "DurationInMonth", zlab = "PurposeOfCredit")
pch3d(credit$AccountBalance, credit$DurationInMonth, credit$PurposeOfCredit,pch = credit$CreditEvaluation + 14, radius = 0.5,cex = .05)

??pch3d()

library(useful)
library(ggplot2)

# first feature 
x <- credit$AccountBalance
# second feature 
y <- credit$DurationInMonth
# third feature 
z <- credit$Age
# obtain a training dataset that does not have the target variable CreditEvaluation
creditTrain <- credit[, which(names(credit) != "CreditEvaluation")]
# set the numbers of clustering
creditBest <- FitKMeans(creditTrain, max.clusters=20, nstart=10, seed=278613)
k <- creditBest[creditBest$AddCluster != "TRUE", ][1,1]
# perform k-means clustering
# two dimensional clustering
creditK <- kmeans(creditTrain, k)
plot(creditK, data=credit, class="CreditEvaluation")

# choose the right number of k clusters





credit$cluster <- as.factor(cl$cluster)

pch3d(x, y, z, pch=c(1,10), radius = 0.5,cex = .05)
plot3d(cbind(x,y,z), col=credit$cluster, xlab = "x", ylab = "y", zlab = "z")
install.packages("useful")


# get to know the datatype of each variable
# head(credit)
str(credit)



# ===== TO-DO LIST ===== #
# split the data into trainData and testData
# build prediction model (finish one model first. If have more time, try some other models)
# Create the shiny app
