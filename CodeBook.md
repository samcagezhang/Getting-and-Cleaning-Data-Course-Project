#DATA DICTIONARY – 2016 
#GETTING AND CLEANING DATA COURSE PROJECT

Summarizing the data fields in samzhang.txt.

## Identifiers (2 virables)
* subjectid
       a number represents human volunteers, between 1 to 30.
* activename

       active_labels: LAYING
       
       active_labels: SITTING
       
       active_labels: STANDING
       
       active_labels: WALKING
       
       active_labels: WALKING_DOWNSTAIRS
       
       active_labels: WALKING_UPSTAIRS

## Measurements (561 virables)

* 1 tBodyAcc-mean()-X
* 2 tBodyAcc-mean()-Y
* 3 tBodyAcc-mean()-Z
* 4 tBodyAcc-std()-X
* 5 tBodyAcc-std()-Y
* 6 tBodyAcc-std()-Z
* 7 tBodyAcc-mad()-X
* 8 tBodyAcc-mad()-Y
* 9 tBodyAcc-mad()-Z
* 10 tBodyAcc-max()-X
* 11 tBodyAcc-max()-Y
* 12 tBodyAcc-max()-Z
* 13 tBodyAcc-min()-X
* 14 tBodyAcc-min()-Y
* 15 tBodyAcc-min()-Z
* 16 tBodyAcc-sma()
* 17 tBodyAcc-energy()-X
* 18 tBodyAcc-energy()-Y
* 19 tBodyAcc-energy()-Z
* 20 tBodyAcc-iqr()-X
* 21 tBodyAcc-iqr()-Y
* 22 tBodyAcc-iqr()-Z
* 23 tBodyAcc-entropy()-X
* 24 tBodyAcc-entropy()-Y
* 25 tBodyAcc-entropy()-Z
* 26 tBodyAcc-arCoeff()-X,1
* 27 tBodyAcc-arCoeff()-X,2
* 28 tBodyAcc-arCoeff()-X,3
* 29 tBodyAcc-arCoeff()-X,4
* 30 tBodyAcc-arCoeff()-Y,1
* 31 tBodyAcc-arCoeff()-Y,2
* 32 tBodyAcc-arCoeff()-Y,3
* 33 tBodyAcc-arCoeff()-Y,4
* 34 tBodyAcc-arCoeff()-Z,1
* 35 tBodyAcc-arCoeff()-Z,2
* 36 tBodyAcc-arCoeff()-Z,3
* 37 tBodyAcc-arCoeff()-Z,4
* 38 tBodyAcc-correlation()-X,Y
* 39 tBodyAcc-correlation()-X,Z
* 40 tBodyAcc-correlation()-Y,Z
* 41 tGravityAcc-mean()-X
* 42 tGravityAcc-mean()-Y
* 43 tGravityAcc-mean()-Z
* 44 tGravityAcc-std()-X
* 45 tGravityAcc-std()-Y
* 46 tGravityAcc-std()-Z
* 47 tGravityAcc-mad()-X
* 48 tGravityAcc-mad()-Y
* 49 tGravityAcc-mad()-Z
* 50 tGravityAcc-max()-X
* 51 tGravityAcc-max()-Y
* 52 tGravityAcc-max()-Z
* 53 tGravityAcc-min()-X
* 54 tGravityAcc-min()-Y
* 55 tGravityAcc-min()-Z
* 56 tGravityAcc-sma()
* 57 tGravityAcc-energy()-X
* 58 tGravityAcc-energy()-Y
* 59 tGravityAcc-energy()-Z
* 60 tGravityAcc-iqr()-X
* 61 tGravityAcc-iqr()-Y
* 62 tGravityAcc-iqr()-Z
* 63 tGravityAcc-entropy()-X
* 64 tGravityAcc-entropy()-Y
* 65 tGravityAcc-entropy()-Z
* 66 tGravityAcc-arCoeff()-X,1
* 67 tGravityAcc-arCoeff()-X,2
* 68 tGravityAcc-arCoeff()-X,3
* 69 tGravityAcc-arCoeff()-X,4
* 70 tGravityAcc-arCoeff()-Y,1
* 71 tGravityAcc-arCoeff()-Y,2
* 72 tGravityAcc-arCoeff()-Y,3
* 73 tGravityAcc-arCoeff()-Y,4
* 74 tGravityAcc-arCoeff()-Z,1
* 75 tGravityAcc-arCoeff()-Z,2
* 76 tGravityAcc-arCoeff()-Z,3
* 77 tGravityAcc-arCoeff()-Z,4
* 78 tGravityAcc-correlation()-X,Y
* 79 tGravityAcc-correlation()-X,Z
* 80 tGravityAcc-correlation()-Y,Z
* 81 tBodyAccJerk-mean()-X
* 82 tBodyAccJerk-mean()-Y
* 83 tBodyAccJerk-mean()-Z
* 84 tBodyAccJerk-std()-X
* 85 tBodyAccJerk-std()-Y
* 86 tBodyAccJerk-std()-Z
* 87 tBodyAccJerk-mad()-X
* 88 tBodyAccJerk-mad()-Y
* 89 tBodyAccJerk-mad()-Z
* 90 tBodyAccJerk-max()-X
* 91 tBodyAccJerk-max()-Y
* 92 tBodyAccJerk-max()-Z
* 93 tBodyAccJerk-min()-X
* 94 tBodyAccJerk-min()-Y
* 95 tBodyAccJerk-min()-Z
* 96 tBodyAccJerk-sma()
* 97 tBodyAccJerk-energy()-X
* 98 tBodyAccJerk-energy()-Y
* 99 tBodyAccJerk-energy()-Z
* 100 tBodyAccJerk-iqr()-X
* 101 tBodyAccJerk-iqr()-Y
* 102 tBodyAccJerk-iqr()-Z
* 103 tBodyAccJerk-entropy()-X
* 104 tBodyAccJerk-entropy()-Y
* 105 tBodyAccJerk-entropy()-Z
* 106 tBodyAccJerk-arCoeff()-X,1
* 107 tBodyAccJerk-arCoeff()-X,2
* 108 tBodyAccJerk-arCoeff()-X,3
* 109 tBodyAccJerk-arCoeff()-X,4
* 110 tBodyAccJerk-arCoeff()-Y,1
* 111 tBodyAccJerk-arCoeff()-Y,2
* 112 tBodyAccJerk-arCoeff()-Y,3
* omit from No. 113 to No. 550
* 551 fBodyBodyGyroJerkMag-maxInds
* 552 fBodyBodyGyroJerkMag-meanFreq()
* 553 fBodyBodyGyroJerkMag-skewness()
* 554 fBodyBodyGyroJerkMag-kurtosis()
* 555 angle(tBodyAccMean,gravity)
* 556 angle(tBodyAccJerkMean),gravityMean)
* 557 angle(tBodyGyroMean,gravityMean)
* 558 angle(tBodyGyroJerkMean,gravityMean)
* 559 angle(X,gravityMean)
* 560 angle(Y,gravityMean)
* 561 angle(Z,gravityMean)


Notes:
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
For more information about this dataset contact: voiceccie@qq.com
