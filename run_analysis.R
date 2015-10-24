## Load the necessary libraries
library(plyr)
## Read the training set data and merge it with subject and activity files
## Read the training data file
traindata <- read.table("X_train.txt")
## Read the Activity labels data file
activity <- read.table("y_train.txt")
## Read the subject data file
subject <- read.table("subject_train.txt")
## Read the features data file
features <- read.table("features.txt")
## Assign the column names to training data using features data
colnames(traindata) <- features[,2]
## Merge the subject, activity and training data
train_sub_activity <- cbind(subject,activity,traindata)
colnames(train_sub_activity)[1] <- "Subject"
colnames(train_sub_activity)[2] <- "Activity"

## Read the test set data and merge it with subject and activity files
## Read the training data file
testdata <- read.table("X_test.txt")
## Read the Activity labels data file
tactivity <- read.table("y_test.txt")
## Read the subject data file
tsubject <- read.table("subject_test.txt")
## Assign the column names to training data using features data
colnames(testdata) <- features[,2]
## Merge the subject, activity and training data 
test_sub_activity <- cbind(tsubject,tactivity,testdata)
colnames(test_sub_activity)[1] <- "Subject"
colnames(test_sub_activity)[2] <- "Activity"

## Merge both Training and Test Data Set (Step 1 for the project)
mergeddata<-rbind(train_sub_activity,test_sub_activity)

## Extract the mean and standard deviation for each measurement (Step 2 for the project)
mergeddata<-mergeddata[,grepl("Subject|Activity|std\\(\\)|mean\\(\\)",colnames(mergeddata))]

## Read the activity labels
activity_labels<- read.table("activity_labels.txt")
## Descriptive name for activity in the merged data (Step 3 for the project)
mergeddata$Activity<-mapvalues(mergeddata$Activity,from=as.character(activity_labels$V1),to=as.character(activity_labels$V2))

## Rename the variables (Step 4 of the project)
names(mergeddata)<-gsub("std\\(\\)","standarddeviation\\(\\)",names(mergeddata))
names(mergeddata)<-gsub("Acc","Acceleration",names(mergeddata))
names(mergeddata)<-gsub("Gyro","Gyroscope",names(mergeddata))
names(mergeddata)<-gsub("Mag","Magnitude",names(mergeddata))

## Tidy data created by aggregating on subject and activit (Step 5 of the project)
tidydata<- aggregate(mergeddata[,-which(names(mergeddata) %in% c("Subject","Activity"))], list(Subject=mergeddata$Subject, Activity=mergeddata$Activity),mean)
write.table(tidydata,file="tidydata.txt",row.name=FALSE)
