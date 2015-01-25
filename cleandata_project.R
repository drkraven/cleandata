########################################################################################
## R Script of Course Project of Getting and Cleaning Data 
## Date: Jan-25-2015
## 
########################################################################################

##import packages
library(dplyr)
library(reshape2)

##read Feature labels
featureLabels <- read.table("/home/developer/courses/cleandata/uci_ds/features.txt")

##read activity labels
activityLabels <- read.table("/home/developer/courses/cleandata/uci_ds/activity_labels.txt")

## read in Y values and substitue values with the corresponding activity labels
mutateActivityLabel <- function(filePath) {  
  yValue  <- read.table(filePath)
  y <- mutate(yValue, act_label= activityLabels[yValue$V1, 2] )
  return(y[,2])
}

## read in observed measures and extract only mean and standard deviation variables for each measure
extractMeasures <- function(filePath) {
  measures <- read.table(filePath)
  colnames(measures) <- featureLabels[,2]
  retMeasures <- measures[, c(1:6, 41:46, 81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:271,345:350,424:429,503,504,516,517,529,530,542,543,555:561)]
  return(retMeasures)
}

## create a dataset with observed measures with correstponding subject_id annd activities
assembleDS <- function(subjectPath, activityPath, featuresPath) {
  subjectDS <- read.table(subjectPath)
  activityDS <- mutateActivityLabel(activityPath)
  features <- extractMeasures(featuresPath)
 
  tempds <- cbind(subjectDS, activityDS)
  colnames(tempds) <- c('subject_id','activity_label')
  
  ## ds = merge(tempds, features, all=TRUE)
  ds <- cbind(tempds, features)
  return(ds)
}

# read and create training dataset
trainingDS <-  assembleDS("/home/developer/courses/cleandata/uci_ds/train/subject_train.txt", "/home/developer/courses/cleandata/uci_ds/train/y_train.txt", "/home/developer/courses/cleandata/uci_ds/train/X_train.txt")
# read and create test dataset
testDS <- assembleDS("/home/developer/courses/cleandata/uci_ds/test/subject_test.txt", "/home/developer/courses/cleandata/uci_ds/test/y_test.txt", "/home/developer/courses/cleandata/uci_ds/test/X_test.txt")

#merge test and training dataset into one
mergedDS <- rbind(trainingDS, testDS)

#create a new tidy dataset that contains subject_id, actitvity, and the average value of each variable
mergedDS_melt <- melt(mergedDS, id=c("subject_id","activity_label"))
ds_mean <- dcast(mergedDS_melt, subject_id+activity_label ~ variable, mean)
# order new dataset by subject_id
ds_mean <- arrange(ds_mean, subject_id)
# generate output
write.table(ds_mean, file = "clean_solution_hl.txt", row.names = FALSE)
