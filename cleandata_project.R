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
activityLabels <- read.table("/home/developer/courses/cleandata/uci_ds/activity_labels.txt")

mutateActivityLabel <- function(filePath) {
  
  yValue  <- read.table(filePath)
  y <- mutate(yValue, act_label= activityLabels[yValue$V1, 2] )
  return(y[,2])
}

extractMeasures <- function(filePath) {
  measures <- read.table(filePath)
  colnames(measures) <- featureLabels[,2]
  retMeasures <- measures[, c(1:6, 41:46, 81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:271,345:350,424:429,503,504,516,517,529,530,542,543,555:561)]
  return(retMeasures)
}

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


trainingDS <-  assembleDS("/home/developer/courses/cleandata/uci_ds/train/subject_train.txt", "/home/developer/courses/cleandata/uci_ds/train/y_train.txt", "/home/developer/courses/cleandata/uci_ds/train/X_train.txt")
testDS <- assembleDS("/home/developer/courses/cleandata/uci_ds/test/subject_test.txt", "/home/developer/courses/cleandata/uci_ds/test/y_test.txt", "/home/developer/courses/cleandata/uci_ds/test/X_test.txt")


mergedDS <- rbind(trainingDS, testDS)
mergedDS_melt <- melt(mergedDS, id=c("subject_id","activity_label"))
ds_mean <- dcast(mergedDS_melt, subject_id+activity_label ~ variable, mean)

ds_mean <- arrange(ds_mean, subject_id)
write.table(ds_mean, file = "clean_set.txt", row.names = FALSE)
