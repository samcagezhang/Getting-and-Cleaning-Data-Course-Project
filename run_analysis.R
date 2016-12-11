## There are 5 steps to get tidy data
### Step1: Merges the training and the test sets to create one data set.
### Step2: Extracts only the measurements on the mean and standard deviation for each measurement.
### Step3: Uses descriptive activity names to name the activities in the data set
### Step4: Appropriately labels the data set with descriptive variable names.
### Step5: From the data set in step 4, creates a second, independent tidy data set with the average 
###        of each variable for each activity and each subject.

##########################################################################
# PRE-Step1:  Environment setting
### unzip the data to work directionary
setwd('E:\\Coursera\\Data Science (JHU)\\Getting and Cleaning Data\\data\\UCI HAR Dataset\\UCI HAR Dataset')
dir()

### Library package
library(dplyr);library(data.table)

### 1, read x_train.txt into R;
x_train <- read.table('./train/X_train.txt', header = FALSE)

### 2, read x_test.txt into R;
x_test <- read.table('./test/X_test.txt', header = FALSE)

### 3, read y_train.txt into R;
y_train <- read.csv('./train/y_train.txt', sep = ' ', header = FALSE)

### 4, read y_test.txt into R;
y_test <- read.csv('./test/y_test.txt', sep = ' ', header = FALSE)

### 5, read features.txt into R;
features <- read.csv('features.txt', sep = ' ', header = FALSE, stringsAsFactors = FALSE)

### 6, read activity_labels.txt into R;
activity_labels <- read.csv('activity_labels.txt', sep = ' ', header = FALSE)
names(activity_labels) <- c("no", 'active_labels')

### 7, read subject_train.txt / subject_test.txt into R.
subject_test <- read.csv('./test/subject_test.txt', sep = ' ', header = FALSE)
subject_train <- read.table('./train/subject_train.txt', header = FALSE)

# Step1: Merges the training and the test sets to create one data set.
### rbinding x_train and x_test to x_data
x_data <- rbind(x_train, x_test)

### rbinding y_train and y_test to y_label
y_label <- rbind(y_train, y_test)

### rbinding subject_train and subject_test to subject
subject <- rbind(subject_train, subject_test)

### using features to name the x_train, x_test data frame
### features$V2 has some duplicated items. If only using features$V2 as column names, 
### we can't use funcations like: select, mutate, summarize_all.
### Making unique names by pasting the order number and features names together
features <- mutate(features, features_name = paste(as.character(features$V1), features$V2))
f <- list(features$features_name)
names(x_data) <- transpose(f)

### View the beautiful tidy data
View(x_data); View(subject)

##########################################################################
# Step2:Extracts only the measurements on the mean and standard deviation for each measurement.
###Getting all the columns which's names include mean() or std()
###Pay attention on the \\(\\) in grep, because "(" ")" are not normal letters in regular expression.

ff <- grep('*mean\\(\\)*|*std\\(\\)*', unlist(transpose(f)))

extract_data <- x_data[,ff]
View(extract_data)


##########################################################################
# Step3:Uses descriptive activity names to name the activities in the data set
###add a new column to y_label which repersents activity_labels
y_label <- mutate(y_label, activename = '')

###1<--->WALKING
y_label[y_label$V1 == 1,]$activename = 'WALKING'

###2<--->WALKING_UPSTAIRS
y_label[y_label$V1 == 2,]$activename = 'WALKING_UPSTAIRS'

###3<--->WALKING_DOWNSTAIRS
y_label[y_label$V1 == 3,]$activename = 'WALKING_DOWNSTAIRS'

###4<--->SITTING
y_label[y_label$V1 == 4,]$activename = 'SITTING'

###5<--->STANDING
y_label[y_label$V1 == 5,]$activename = 'STANDING'

###6<--->LAYING
y_label[y_label$V1 == 6,]$activename = 'LAYING'

###Then add y_label$activename to x_data with column name: activename.
### adds subjectid to x_data
extract_data <- mutate(extract_data, activename = y_label$activename, subjectid = subject$V1)
View(extract_data)

##########################################################################
# Step4:Appropriately labels the data set with descriptive variable names.
## getting rid of space, (), uppercase letters, and - from all the variable names.
############################################################################
DataName <- tolower(names(extract_data))
DataName <- gsub('\\-|\\(|\\)| ', '', DataName)
names(extract_data) <- DataName


##########################################################################
# Step5:From the data set in step 4, creates a second, independent tidy data set
#       with the average of each variable for each activity and each subject.

### group_by 'activename' and 'subjectid' then summarize_all
step5_data <- group_by(extract_data, activename, subjectid) %>% summarize_all(mean)
View(step5_data)

### outpout the beautiful tidy data
write.table(step5_data, file = 'samzhang.txt', row.name=FALSE)
