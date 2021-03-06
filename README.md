## cleandata

### Analysis Steps
1. Read in Test and Training measurements from X_Test.txt and X_train.txt files. 
2. Extracted only mean and standard deviation for each measurements by calling funcation extractMeasures
3. Read in activity for each observation, and assigned it to the correpsonding text label as specified in "activity_labels.txt" 
4. Combined subject_id and activity lables with each observation row to create a complete dataset by calling function assembleDS.
5. Merge test and training dataset together as one data set
6. Finally, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
7. Output this dataset to a text file

### Code Book
subject_id                   1      User identifier [1 - 30]

activity_lable               2      [WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING]

tBodyAcc-mean()-X            3      Average mean values for tBodyAcc-X for each subject for each activity

tBodyAcc-mean()-Y            4      Average mean values for tBodyAcc-Y for each subject for each activity                

tBodyAcc-mean()-Z            5      Average mean values for tBodyAcc-Z for each subject for each activity

tBodyAcc-std()-X             6      Average standard deviation values for tBodyAcc-X for each subject for each activity

tBodyAcc-std()-Y             7      Average standard deviation values for tBodyAcc-Y for each subject for each activity

tBodyAcc-std()-Z             8      Average standard deviation values for tBodyAcc-Z for each subject for each activity

tGravityAcc-mean()-X         9      Average mean values for tGravityAcc-X for each subject for each activity              

tGravityAcc-mean()-Y         10     Average mean values for tGravityAcc-Y for each subject for each activity                

tGravityAcc-mean()-Z         11     Average mean values for tGravityAcc-Z for each subject for each activity 

tGravityAcc-std()-X          12     Average standard deviation values for tGravityAcc-X for each subject for each activity 

tGravityAcc-std()-Y          13     Average standard deviation values for tGravityAcc-Y for each subject for each activity  

tGravityAcc-std()-Z          14     Average standard deviation values for tGravityAcc-Z for each subject for each activity

tBodyAccJerk-mean()-X        15     Average mean values for tBodyAccJerk-X for each subject for each activity        

tBodyAccJerk-mean()-Y        16     Average mean values for tBodyAccJerk-Y for each subject for each activity

tBodyAccJerk-mean()-Z        17     Average mean values for tBodyAccJerk-Z for each subject for each activity

tBodyAccJerk-std()-X        18      Average standard deviation values for tBodyAccJerk-X for each subject for each activity

tBodyAccJerk-std()-Y        19      Average standard deviation values for tBodyAccJerk-Y for each subject for each activity

tBodyAccJerk-std()-Z        20      Average standard deviation values for tBodyAccJerk-Z for each subject for each activity

tBodyGyro-mean()-X          21      Average mean values for tBodyGyro-X for each subject for each activity 

tBodyGyro-mean()-Y          22      Average mean values for tBodyGyro-Y for each subject for each activity 

tBodyGyro-mean()-Z          23      Average mean values for tBodyGyro-Z for each subject for each activity

tBodyGyro-std()-X           24      Average standard deviation values for tBodyGyro-X for each subject for each activity

tBodyGyro-std()-Y           25      Average standard deviation values for tBodyGyro-Y for each subject for each activity

tBodyGyro-std()-Z           26      Average standard deviation values for tBodyGyro-Z for each subject for each activity

tBodyGyroJerk-mean()-X      27      Average mean values for tBodyGyroJerk-X for each subject for each activity 

tBodyGyroJerk-mean()-Y      28      Average mean values for tBodyGyroJerk-Y for each subject for each activity 

tBodyGyroJerk-mean()-Z      29      Average mean values for tBodyGyroJerk-Z for each subject for each activity 

tBodyGyroJerk-std()-X       30      Average standard deviation values for tBodyGyroJerk-X for each subject for each activity

tBodyGyroJerk-std()-Y       31      Average standard deviation values for tBodyGyroJerk-Y for each subject for each activity

tBodyGyroJerk-std()-Z       32      Average standard deviation values for tBodyGyroJerk-Z for each subject for each activity

tBodyAccMag-mean()          33      Average mean values for tBodyAccMag for each subject for each activity    

tBodyAccMag-std()           34      Average standard deviation values for tBodyAccMag-X for each subject for each activity

tGravityAccMag-mean()       35      Average mean values for tGravityAccMag for each subject for each activity

tGravityAccMag-std()        36      Average standard deviation values for tGravityAccMag for each subject for each activity

tBodyAccJerkMag-mean()      37      Average mean values for tBodyAccJerkMag for each subject for each activity

tBodyAccJerkMag-std()       38      Average standard deviation values for tBodyAccJerkMag for each subject for each activity

tBodyGyroMag-mean()         39      Average mean values for tBodyGyroMag for each subject for each activity         

tBodyGyroMag-std()          40      Average standard deviation values for tBodyGyroMag for each subject for each activity

tBodyGyroJerkMag-mean()     41      Average mean values for tBodyGyroJerkMag for each subject for each activity

tBodyGyroJerkMag-std()      42      Average standard deviation values for tBodyGyroJerkMag for each subject for each activity

fBodyAcc-mean()-X           43      Average mean values for fBodyAcc-X for each subject for each activity

fBodyAcc-mean()-Y           44      Average mean values for fBodyAcc-Y for each subject for each activity

fBodyAcc-mean()-Z           45      Average mean values for fBodyAcc-Z for each subject for each activity                    

fBodyAcc-std()-X            46      Average standard deviation values for fBodyAcc-X for each subject for each activity

fBodyAcc-std()-Y            47      Average standard deviation values for fBodyAcc-Y for each subject for each activity

fBodyAcc-std()-Z            48      Average standard deviation values for fBodyAcc-Z for each subject for each activity

fBodyAccJerk-mean()-X       49      Average mean values for fBodyAccJerk-X for each subject for each activity  

fBodyAccJerk-mean()-Y       50      Average mean values for fBodyAccJerk-Y for each subject for each activity  

fBodyAccJerk-mean()-Z       51      Average mean values for fBodyAccJerk-Z for each subject for each activity  

fBodyAccJerk-std()-X        52    Average standard deviation values for fBodyAccJerk-X for each subject for each activity

fBodyAccJerk-std()-Y        53    Average standard deviation values for fBodyAccJerk-Y for each subject for each activity

fBodyAccJerk-std()-Z        54    Average standard deviation values for fBodyAccJerk-Z for each subject for each activity

fBodyGyro-mean()-X          55      Average mean values for fBodyGyro-X for each subject for each activity  

fBodyGyro-mean()-Y          56      Average mean values for fBodyGyro-Y for each subject for each activity  

fBodyGyro-mean()-Z          57      Average mean values for fBodyGyro-Z for each subject for each activity  

fBodyGyro-std()-X           58      Average standard deviation values for fBodyGyro-X for each subject for each activity

fBodyGyro-std()-Y           59      Average standard deviation values for fBodyGyro-Y for each subject for each activity

fBodyGyro-std()-Z           60      Average standard deviation values for fBodyGyro-Z for each subject for each activity

fBodyAccMag-mean()          61      Average mean values for fBodyAccMag for each subject for each activity 

fBodyAccMag-std()           62      Average standard deviation values for fBodyAccMag for each subject for each activity

fBodyBodyAccJerkMag-mean()  63      Average mean values for fBodyBodyAccJerkMag for each subject for each activity 

fBodyBodyAccJerkMag-std()   64      Average standard deviation values for fBodyBodyAccJerkMag for each subject for each activity

fBodyBodyGyroMag-mean()     65      Average mean values for fBodyBodyGyroMag for each subject for each activity 

fBodyBodyGyroMag-std()      66      Average standard deviation values for fBodyBodyGyroMag for each subject for each activity

fBodyBodyGyroJerkMag-mean() 67      Average mean values for fBodyBodyGyroJerkMag for each subject for each activity 

BodyBodyGyroJerkMag-std()   68
