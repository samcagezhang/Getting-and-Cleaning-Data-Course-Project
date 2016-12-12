---
title: "CODE BOOK of GETTING AND CLEANING DATA COURSE PROJECT"
author: "Sam Zhang"
date: "2016/12/12"
output:
  txt_document: tidy.txt
    keep_md: yes
---

## Project Description
The project goal is to prepare tidy data that can be used for later analysis.

##Study design and data processing

###Collection of the raw data
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Notes on the original (raw) data 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

##Creating the tidy datafile

###Guide to create the tidy data file
1, Download, unzip and read the data into R;
2, Merage train and test data together;
3, Name the data column with features.txt;
4, Extract '-mean()' and -std()' columns to form a new data set;
5, Mutate two columns to extractted data which are activename and subjectid;
6, Getting rid of ' ', '(', ')' and '-' from all variable names;
7, Group_by and summarize_all the new data set, output the new data set.

##Description of the variables in the tidy.txt file
General description of the file including:
 - Dimensions of the dataset: 180 X 66
 - Summary of the data: 30 subjectid X 6 active_labels X 66 variables
 - Variables present in the dataset

###Variable 1-2 Identifiers

* subjectid: a number represents human volunteers from 1 to 30.
* activename

###Variables 3-68 measurements

* 1tbodyaccmeanx
* 2tbodyaccmeany
* 3tbodyaccmeanz
* 4tbodyaccstdx
* 5tbodyaccstdy
* 6tbodyaccstdz
* 41tgravityaccmeanx
* 42tgravityaccmeany
* 43tgravityaccmeanz
* 44tgravityaccstdx
* 45tgravityaccstdy
* 46tgravityaccstdz
* 81tbodyaccjerkmeanx
* 82tbodyaccjerkmeany
* 83tbodyaccjerkmeanz
* 84tbodyaccjerkstdx
* 85tbodyaccjerkstdy
* 86tbodyaccjerkstdz
* 121tbodygyromeanx
* 122tbodygyromeany
* 123tbodygyromeanz
* 124tbodygyrostdx
* 125tbodygyrostdy
* 126tbodygyrostdz
* 161tbodygyrojerkmeanx
* 162tbodygyrojerkmeany
* 163tbodygyrojerkmeanz
* 164tbodygyrojerkstdx
* 165tbodygyrojerkstdy
* 166tbodygyrojerkstdz
* 201tbodyaccmagmean
* 202tbodyaccmagstd
* 214tgravityaccmagmean
* 215tgravityaccmagstd
* 227tbodyaccjerkmagmean
* 228tbodyaccjerkmagstd
* 240tbodygyromagmean
* 241tbodygyromagstd
* 253tbodygyrojerkmagmean
* 254tbodygyrojerkmagstd
* 266fbodyaccmeanx
* 267fbodyaccmeany
* 268fbodyaccmeanz
* 269fbodyaccstdx
* 270fbodyaccstdy
* 271fbodyaccstdz
* 345fbodyaccjerkmeanx
* 346fbodyaccjerkmeany
* 347fbodyaccjerkmeanz
* 348fbodyaccjerkstdx
* 349fbodyaccjerkstdy
* 350fbodyaccjerkstdz
* 424fbodygyromeanx
* 425fbodygyromeany
* 426fbodygyromeanz
* 427fbodygyrostdx
* 428fbodygyrostdy
* 429fbodygyrostdz
* 503fbodyaccmagmean
* 504fbodyaccmagstd
* 516fbodybodyaccjerkmagmean
* 517fbodybodyaccjerkmagstd
* 529fbodybodygyromagmean
* 530fbodybodygyromagstd
* 542fbodybodygyrojerkmagmean
* 543fbodybodygyrojerkmagstd

####Notes on variable 2 activename:

* LAYING       
* SITTING       
* STANDING       
* WALKING       
* WALKING_DOWNSTAIRS       
* WALKING_UPSTAIRS

###Notes:
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
For more information about this dataset contact: voiceccie@qq.com
