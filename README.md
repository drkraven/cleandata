## cleandata

### Analysis Steps
1. Read in Test and Training measurements from X_Test.txt and X_train.txt files. 
2. Extracted only mean and standard deviation for each measurements by calling funcation extractMeasures
3. Read in activity for each observation, and assigned it to the correpsonding text label as specified in "activity_labels.txt" 
4. Combined subject_id and activity lables with each observation row to create a complete dataset by calling function assembleDS.
5. Merge test and training dataset together as one data set
6. Finally, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
7. Output this dataset to a text file!

### Code Book
subject_id                   1      User identifier [1 - 30]
activity_lable               2      [WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING]
tBodyAcc-mean()-X            3      Average mean values for tBodyAcc-X for each subject for each activity
tBodyAcc-mean()-Y            4      Average mean values for tBodyAcc-Y for each subject for each activity                
tBodyAcc-mean()-Z            5      Average mean values for tBodyAcc-Z for each subject for each activity
tBodyAcc-std()-X             6
tBodyAcc-std()-Y             7
tBodyAcc-std()-Z             8
tGravityAcc-mean()-X         9      Average mean values for tGravityAcc-X for each subject for each activity              
tGravityAcc-mean()-Y         10     Average mean values for tGravityAcc-Y for each subject for each activity                
tGravityAcc-mean()-Z         11     Average mean values for tGravityAcc-Z for each subject for each activity 
tGravityAcc-std()-X          12       
tGravityAcc-std()-Y          13
tGravityAcc-std()-Z          14
tBodyAccJerk-mean()-X        15             
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z        
tBodyAccJerk-std()-X                
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z, tBodyGyro-mean()-X,                   
tBodyGyro-mean()-Y, tBodyGyro-mean()-Z, tBodyGyro-std()-X,                    
tBodyGyro-std()-Y, tBodyGyro-std()-Z, tBodyGyroJerk-mean()-X,               
tBodyGyroJerk-mean()-Y, tBodyGyroJerk-mean()-Z, tBodyGyroJerk-std()-X,                
tBodyGyroJerk-std()-Y, tBodyGyroJerk-std()-Z, tBodyAccMag-mean(),                   
tBodyAccMag-std(), tGravityAccMag-mean(), tGravityAccMag-std(),                 
tBodyAccJerkMag-mean(), tBodyAccJerkMag-std(), tBodyGyroMag-mean(),                  
tBodyGyroMag-std(), tBodyGyroJerkMag-mean(),               , tBodyGyroJerkMag-std(),               
fBodyAcc-mean()-X, fBodyAcc-mean()-Y, fBodyAcc-mean()-Z,                    
fBodyAcc-std()-X, fBodyAcc-std()-Y, fBodyAcc-std()-Z,                     
fBodyAccJerk-mean()-X, fBodyAccJerk-mean()-Y, fBodyAccJerk-mean()-Z,                
fBodyAccJerk-std()-X, fBodyAccJerk-std()-Y, fBodyAccJerk-std()-Z,                 
fBodyGyro-mean()-X, fBodyGyro-mean()-Y, fBodyGyro-mean()-Z,                   
fBodyGyro-std()-X, fBodyGyro-std()-Y, fBodyGyro-std()-Z,                    
fBodyAccMag-mean(), fBodyAccMag-std(), fBodyBodyAccJerkMag-mean(),           
fBodyBodyAccJerkMag-std(), fBodyBodyGyroMag-mean(), fBodyBodyGyroMag-std(),               
fBodyBodyGyroJerkMag-mean(),  BodyBodyGyroJerkMag-std()
