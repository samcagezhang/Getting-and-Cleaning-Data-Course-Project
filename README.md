## There are 5 steps to get tidy data
* Step 1: Merges the training and the test sets to create one data set.
* Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.
* Step 3: Uses descriptive activity names to name the activities in the data set
* Step 4: Appropriately labels the data set with descriptive variable names.
* Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

---
# PRE-Step1:  Environment setting
### unzip the data to work directionary
### load library package
### 1, read x_train.txt into R;
### 2, read x_test.txt into R;
### 3, read y_train.txt into R;
### 4, read y_test.txt into R;
### 5, read features.txt into R;
### 6, read activity_labels.txt into R.

# Step1: Merges the training and the test sets to create one data set.
### rbinding x_train and x_test to x_data
### rbinding y_train and y_test to y_label

### using features to name the x_train, x_test data frame
 features$V2 has some duplicated items. If only using features$V2 as column names, 
 we can't use funcations like: select, mutate, summarize_all.
 Making unique names by pasting the order number and features names together
 
* features <- mutate(features, features_name = paste(as.character(features$V1), features$V2))
* f <- list(features$features_name)
* names(x_data) <- transpose(f)


---
# Step2:Extracts only the measurements on the mean and standard deviation for each measurement.
###Getting all the columns which's names include mean() or std()
###Pay attention on the \\(\\) in grep, because "(" ")" are not normal letters in regular expression.

* ff <- grep('*mean\\(\\)*|*std\\(\\)*', unlist(transpose(f)))
* extract_data <- x_data[,ff]
* View(extract_data)


---
# Step3:Uses descriptive activity names to name the activities in the data set
###add a new column to y_label which repersents activity_labels
* y_label <- mutate(y_label, activename = '')

###1<--->WALKING
* y_label[y_label$V1 == 1,]$activename = 'WALKING'

###2<--->WALKING_UPSTAIRS
* y_label[y_label$V1 == 2,]$activename = 'WALKING_UPSTAIRS'

###3<--->WALKING_DOWNSTAIRS
* y_label[y_label$V1 == 3,]$activename = 'WALKING_DOWNSTAIRS'

###4<--->SITTING
* y_label[y_label$V1 == 4,]$activename = 'SITTING'

###5<--->STANDING
* y_label[y_label$V1 == 5,]$activename = 'STANDING'

###6<--->LAYING
* y_label[y_label$V1 == 6,]$activename = 'LAYING'

###Then add y_label$activename to x_data with column name: activename.
* x_data <- mutate(x_data, activename = y_label$activename)

* View(x_data)

---
# Step4:Appropriately labels the data set with descriptive variable names.
## !!! WE HAVE NAMED ALL VARIABLES AT STEP 1, THERE IS NO NEED TO NAME variableS HERE AGAIN !!!
### Making unique names by pasting the order number and features names together



---
# Step5:From the data set in step 4, creates a second, independent tidy data set
#       with the average of each variable for each activity and each subject.

### group_by 'activename' then summarize_all
* step5_data <- group_by(x_data, activename) %>% summarize_all(mean)
* View(step5_data)

### outpout the beautiful tidy data
* write.table(step5_data, file = 'samzhang.txt', row.name=FALSE)



