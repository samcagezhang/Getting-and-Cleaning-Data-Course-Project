# Step1: Merges the training and the test sets to create one data set.
# Step2: Extracts only the measurements on the mean and standard deviation for each measurement.
# Step3: Uses descriptive activity names to name the activities in the data set
# Step4: Appropriately labels the data set with descriptive variable names.
# Step5: From the data set in step 4, creates a second, independent tidy data set with the average 
#        of each variable for each activity and each subject.

##########################################################################
# Step1: Merges the training and the test sets to create one data set.
# Environment setting
setwd('E:\\Coursera\\Data Science (JHU)\\Getting and Cleaning Data\\data\\UCI HAR Dataset\\UCI HAR Dataset')
dir()
library(dplyr)
library(data.table)

# 1, read x_train.txt into R;
# 2, read x_test.txt into R;
# 3, read y_train.txt into R;
# 4, read y_test.txt into R;
# 5, read features.txt into R;
# 6, read activity_labels.txt into R.

x_train <- read.table('./train/X_train.txt', header = FALSE)
x_test <- read.table('./test/X_test.txt', header = FALSE)
y_train <- read.csv('./train/y_train.txt', sep = ' ', header = FALSE)
y_test <- read.csv('./test/y_test.txt', sep = ' ', header = FALSE)
subject_train <- read.csv('./train/subject_train.txt', sep = ' ', header = FALSE)
features <- read.csv('features.txt', sep = ' ', header = FALSE, stringsAsFactors = FALSE)
activity_labels <- read.csv('activity_labels.txt', sep = ' ', header = FALSE)
names(activity_labels) <- c("no", 'active_labels')

# using features to name the x_train, x_test data frame;
# rbinding x_train and x_test to x_data;
# rbinding y_train and y_test to y_label

x_data <- rbind(x_train, x_test)
y_label <- rbind(y_train, y_test)

features <- mutate(features, features_name = paste(as.character(features$V1), features$V2))
f <- list(features$features_name)
names(x_data) <- transpose(f)


View(x_data);
#View(y_label); View(features); View(y_train); View(y_test); View(activity_labels); View(subject_train)


##########################################################################
# Step2:Extracts only the measurements on the mean and standard deviation for each measurement.
#Getting all the columns which's name include mean() or std()
#Pay attention on the \\(\\) in grep, because "(" ")" are not normal letters in regular expression.

ff <- grep('*mean\\(\\)*|*std\\(\\)*', unlist(transpose(f)))

extract_data <- x_data[,ff]
View(extract_data)


##########################################################################
# Step3:Uses descriptive activity names to name the activities in the data set
# add a new column to y_label which repersents activity_labels
# 1  WALKING
# 2  WALKING_UPSTAIRS
# 3  WALKING_DOWNSTAIRS
# 4  SITTING
# 5  STANDING
# 6  LAYING


y_label <- mutate(y_label, activename = '')

y_label[y_label$V1 == 1,]$activename = 'WALKING'
y_label[y_label$V1 == 2,]$activename = 'WALKING_UPSTAIRS'
y_label[y_label$V1 == 3,]$activename = 'WALKING_DOWNSTAIRS'
y_label[y_label$V1 == 4,]$activename = 'SITTING'
y_label[y_label$V1 == 5,]$activename = 'STANDING'
y_label[y_label$V1 == 6,]$activename = 'LAYING'

#Then add y_label$activename to x_data with column name: activename.
x_data <- mutate(x_data, activename = y_label$activename)
View(x_data)

##########################################################################
# Step4:Appropriately labels the data set with descriptive variable names.
# !!! WE HAVE NAMED ALL VARIABLES AT STEP 1, THERE IS NO NEED TO NAME variableS HERE AGAIN !!!
# Making unique names by pasting the order number and features names together
############################################################################
# features <- mutate(features, features_name = paste(as.character(features$V1), features$V2))
# f <- list(features$features_name)
# names(x_data) <- transpose(f)
# View(x_data)

##########################################################################
# Step5:From the data set in step 4, creates a second, independent tidy data set with the average 
#       of each variable for each activity and each subject.

step5_data <- group_by(x_data, activename) %>% summarize_all(mean)
View(step5_data)
write.table(step5_data, file = 'samzhang.txt', row.name=FALSE)

