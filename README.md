### Introduction
This project is developed for Getting and Cleaning Data course project based on the data collected for a Internet of Things project. The data used in this project was collected from the accelerometer from the Samsung Galaxy S smartphone.

### Objective
The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare the tidy data that can be used for later analysis. For this project, I have submitted this: </br>

1. a Tidy data set
2. a link to a Github repository with the script for performing the analysis
3. a code book that describes the variables, the data, and transformations performed to clean up the data
4. readme file that provides instructions for executing the script

### Script Execution Instructions
1. Download the data for the script from this URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. Unzip the data set files to a location in your local drive. The data files and information files will be downloaded under "UCI HAR Dataset " directory.
3. Download the run_analysis.R file from this repository to "UCI HAR Dataset" directory.
4. Open the RStudio IE and open the run_analysis.R file.
5. Run the command called setwd to set the working directory to "UCI HAR Dataset" directory
6. Run the script using command source("run_analysis.R")
7. After the script running, goto directory "UCI HAR Dataset" and you will see a file called tidydata.txt.

## Script Details
1. First The script reads the following data files in that order
	1. X_train.txt (Training data set file) file stored in traindata
	2. y_train.txt  (Activity labels file) file stored in activity
	3. subject_train.txt (Subject data file) file stored in subject
	4. features.txt (Features data file) file stored in features
2. Next the script assigns column names for traindata data frame using features data frame
3. Next the script merges the subject, activity and training data frames using cbind command and creates a new data frame called train_sub_activity
4. Next the script assigns column names for subject and activity columns to train_sub_activity data frame
5. The script reads the following data files in that order
	1. X_test.txt (Test data) file stored in testdata
	2. y_test.txt (Test activity) file stored in tactivity
	3. subject_test.txt (Test subject data) file stored in tsubject
6. The script assigns column names to testdata data frame using features data frame
7. The script joins the tsubject, tactivity and testdata data frames using cbind command and creates a new data frame called test_sub_activity
8. The script assigns column names for Subject and Activity columns to test_sub_activity data frame 
9. The training data (train_sub_activity) and test data (test_sub_activity) are merged using rbind command and the result is stored in a data frame called mergeddata
10. The script reads activity_labels.txt file and stores the result in activity_labels 
11. The column names are appropriately labeled in the mergeddata data frame
12. The tidy data is created by calculating the average of each variable for each activity and subject in mergeddata data frame using aggregate command.
13. The tidy data content is written to file called tidydata.txt file using write.table command.


