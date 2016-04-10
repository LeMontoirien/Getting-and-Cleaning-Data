Code Book

(part of the coursera assessment for course "Getting and Cleaning Data")

The tidied data set is contained within the file tidydata.txt. This can be easily read with R function read.table().

The dimension of the table are 

180 rows resulting from 30 test subjects during 6 tested activities.
column structure

    col 1: subject id
        value range 1 .. 30
    col 2: activity label
        value range LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS
    col 3 ... col 68: original measurements aggregated as
        either the mean value of the measured means
        or the mean value of the measured standard deviations

The original measurements have these, hopefully descriptive enough, names:

 [1] "tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"           "tBodyAcc-mean()-Z"          
 [4] "tBodyAcc-std()-X"            "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"           
 [7] "tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"        "tGravityAcc-mean()-Z"       
[10] "tGravityAcc-std()-X"         "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"        
[13] "tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"       "tBodyAccJerk-mean()-Z"      
[16] "tBodyAccJerk-std()-X"        "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"       
[19] "tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"         
[22] "tBodyGyro-std()-X"           "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"          
[25] "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"      "tBodyGyroJerk-mean()-Z"     
[28] "tBodyGyroJerk-std()-X"       "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
[31] "tBodyAccMag-mean()"          "tBodyAccMag-std()"           "tGravityAccMag-mean()"      
[34] "tGravityAccMag-std()"        "tBodyAccJerkMag-mean()"      "tBodyAccJerkMag-std()"      
[37] "tBodyGyroMag-mean()"         "tBodyGyroMag-std()"          "tBodyGyroJerkMag-mean()"    
[40] "tBodyGyroJerkMag-std()"      "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
[43] "fBodyAcc-mean()-Z"           "fBodyAcc-std()-X"            "fBodyAcc-std()-Y"           
[46] "fBodyAcc-std()-Z"            "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"      
[49] "fBodyAccJerk-mean()-Z"       "fBodyAccJerk-std()-X"        "fBodyAccJerk-std()-Y"       
[52] "fBodyAccJerk-std()-Z"        "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
[55] "fBodyGyro-mean()-Z"          "fBodyGyro-std()-X"           "fBodyGyro-std()-Y"          
[58] "fBodyGyro-std()-Z"           "fBodyAccMag-mean()"          "fBodyAccMag-std()"          
[61] "fBodyBodyAccJerkMag-mean()"  "fBodyBodyAccJerkMag-std()"   "fBodyBodyGyroMag-mean()"    
[64] "fBodyBodyGyroMag-std()"      "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()" 

