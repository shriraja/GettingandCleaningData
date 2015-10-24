###Getting & Cleaning Data Course Project CodeBook
### Dataset Details
Dataset Name: Human Activity Recognition Using Smartphones DataSet version 1.0
</br>Dataset File Name: getdata-projectfiles-UCI HAR Dataset.zip
</br>Dataset Download link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Dataset description
This dataset was built using the experiments carried out with a group of 30 volunteers with within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 
The description of each data files in the dateset: </br>
1.  features_info.txt - Shows information about the variables used on the feature vector
2.  features.txt - List of all features 
3.  activity_labels.txt - Links the class labels with their activity name
4.  train/X_train.txt - Training set
5.  train/y_train.txt	 - Training Labels
6.  test/X_test.txt - Test set
7.  test/y_test.txt - Test Labels
8.  train/subject_train.txt - Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

### Dataset transformation details
1.  First the X_train.txt , subject_train.txt and y_train.txt data files are merged into the train_sub_activity dataframe using the cbind command.This new data frame has 563 columns.
2.  Next, the X_test.txt, y_test.txt and subject_test.txt data files are merged into the test_sub_activity datafram using the cbind command. This new data frame has 563 columns
3.  Next  the train_sub_activity data frame and test_sub_activity data frame are merged into a mergeddata data frame using rbind command. This frame has 10299 rows and 563 columns.
4.  Next, extracted only the measurements on the mean and standard deviation for each variable using grepl command in the mergeddata data frame and stored the result back into the mergeddata data frame. This frame has 68 columns and 10299 rows.
5.  The variable names are cleaned using gsub command in the mergeddata data frame. 
6.  Then, a new tiny data is created with the average of each variable for each activity and each subject using aggregate command. The resulting data frame is stored in tidadata and it has 180 rows and 68 columns.

###Tidydata dataset variables description
1.  Subject  - The person performing the activity. It is defined as integer from 1 to 30
2.  Activity - The type of activity performed by the person. It is defined as character and possible values are WALKING, WALKING_UPSTAIRS, WALING_DOWNSTAIRS, SITTING, STANDING, LAYING
3.  tBodyacceleration-mean()-X 
	 Mean value of the body acceleration measured by accelerometer in X-axis. The data type of this variable is numeric.
4.  tBodyacceleration-mean()-Y 
	 Mean value of the body acceleration measured by accelerometer in Y-axis. The data type of this variable is numeric.
5.  tBodyacceleration-mean()-Z 
	Mean value of the body acceleration measured by accelerometer in Z-axis. The data type of this variable is numeric.
6.  tBodyacceleration-standarddeviation()-X
	Standard deviation of the body acceleration measured by accelerometer in X-axis. The data type of this variable is numeric.
7.  tBodyacceleration-standarddeviation()-Y
	 Standard deviation of the body acceleration measured by accelerometer in Y-axis. The data type of this variable is numeric.
8.  tBodyacceleration-standarddeviation()-Z
	Standard deviation of the body acceleration measured by accelerometer in Z-axis. The data type of this variable is numeric.
9.  tGravityacceleration-mean()-X
	Mean acceleration of gravity measured by accelerometer in X-axis. The data type of this variable is numeric.
10.  tGravityacceleration-mean()-Y
	Mean acceleration of gravity measured by accelerometer in Y-axis. The data type of this variable is numeric.
11.  tGravityacceleration-mean()-Z
	Mean acceleration of gravity measured by accelerometer in Z-axis. The data type of this variable is numeric.
12.  tGravityacceleration-standarddeviation()-X
	Standard deviation of the gravity measured by accelerometer in X-axis. The data type of this variable is numeric.
13.  tGravityacceleration-standarddeviation()-Y
	Standard deviation of the gravity measured by accelerometer in Y-axis. The data type of this variable is numeric.
14.  tGravityacceleration-standarddeviation()-Z
	Standard deviation of the gravity measured by accelerometer in Y-axis. The data type of this variable is numeric.
15.  tBodyaccelerationJerk-mean()-X
	Mean of the body acceleration jerk signals in X-axis. The jerk signals were measured by body linear acceleration and angular velocity in time to obtain Jerk signals. The data type of this variable is numeric.
16.  tBodyaccelerationJerk-mean()-Y
	Mean of the body acceleration jerk signals in Y-axis. The jerk signals were measured by body linear acceleration and angular velocity in time to obtain Jerk signals. The data type of this variable is numeric.
17.  tBodyaccelerationJerk-mean()-Z
	Mean of the body acceleration jerk signals in Z-axis. The jerk signals were measured by body linear acceleration and angular velocity in time to obtain Jerk signals. The data type of this variable is numeric.
18.  tBodyaccelerationJerk-standarddeviation()-X
	Standard deviation of the body acceleration jerk signals in X-axis. The jerk signals were measured by body linear acceleration and angular velocity in time to obtain Jerk signals. The data type of this variable is numeric.
19.  tBodyaccelerationJerk-standarddeviation()-Y
	Standard deviation of the body acceleration jerk signals in Y-axis. The jerk signals were measured by body linear acceleration and angular velocity in time to obtain Jerk signals. The data type of this variable is numeric.
20.  tBodyaccelerationJerk-standarddeviation()-Z
	Standard deviation of the body acceleration jerk signals in Z-axis. The jerk signals were measured by body linear acceleration and angular velocity in time to obtain Jerk signals. The data type of this variable is numeric.
21.  tBodygyroscope-mean()-X
	Mean body gyroscope in X-axis measured by gyroscope.  The data type of this variable is numeric.
22.  tBodygyroscope-mean()-Y
	Mean body gyroscope in Y-axis measured by gyroscope.  The data type of this variable is numeric.
23.  tBodygyroscope-mean()-Z
	Mean body gyroscope in Z-axis measured by gyroscope.  The data type of this variable is numeric.
24.  tBodygyroscope-standarddeviation()-X
	Standard deviation body gyroscope in X-axis measure by gyroscope. The data type of this variable is numeric.
25.  tBodygyroscope-standarddeviation()-Y
	Standard deviation body gyroscope in Y-axis measure by gyroscope. The data type of this variable is numeric.
26.  tBodygyroscope-standarddeviation()-Z
	Standard deviation body gyroscope in Z-axis measure by gyroscope. The data type of this variable is numeric.
27.  tBodygyroscopeJerk-mean()-X
	Mean of the body gyroscope jerk signals in X-axis. The jerk signals were measured by body linear acceleration and angular velocity in time to obtain Jerk signals. The data type of this variable is numeric.
28.  tBodygyroscopeJerk-mean()-Y
	Mean of the body gyroscope jerk signals in Y-axis. The jerk signals were measured by body linear acceleration and angular velocity in time to obtain Jerk signals. The data type of this variable is numeric.
29.  tBodygyroscopeJerk-mean()-Z
	Mean of the body gyroscope jerk signals in Z-axis. The jerk signals were measured by body linear acceleration and angular velocity in time to obtain Jerk signals. The data type of this variable is numeric.
30.  tBodygyroscopeJerk-standarddeviation()-X
	Standard deviation of the body gyroscope jerk signals in X-axis. The jerk signals were measured by body linear acceleration and angular velocity in time to obtain Jerk signals. The data type of this variable is numeric.
31.  tBodygyroscopeJerk-standarddeviation()-Y
	Standard deviation of the body gyroscope jerk signals in Y-axis. The jerk signals were measured by body linear acceleration and angular velocity in time to obtain Jerk signals. The data type of this variable is numeric.
32.  tBodygyroscopeJerk-standarddeviation()-Z
	Standard deviation of the body gyroscope jerk signals in Z-axis. The jerk signals were measured by body linear acceleration and angular velocity in time to obtain Jerk signals. The data type of this variable is numeric.
33.  tBodyAccelerationMagnitude-mean()
	Mean value of the body acceleration magnitude measured by the accelerometer. The data type of this variable is numeric.
34.  tBodyAccelerationMagnitude-standarddeviation()
	Standard deviation of the body acceleration magnitude measured by the accelerometer. The data type of this variable is numeric.
35.  tGravityAccelerationMagnitude-mean()
	Mean gravity acceleration measured by the accelerometer. The data type of this variable is numeric.
36.  tGravityAccelerationMagnitude-standarddeviation()
	Standard deviation of gravity acceleration magnitude measured by the accelerometer. The data type of this variable is numeric.
37.  tBodyAccelerationJerkMagnitude-mean()
	Mean value of the body acceleration jerk magnitude measured by the accelerometer. The data type of this variable is numeric.
38.  tBodyAccelerationJerkMagnitude-standarddeviation()
	Standard deviation of body acceleration of jerk magnitude measured by the accelerometer. The data type of this variable is numeric.
39.  tBodyGyroscopeMagnitude-mean()
	Mean of the body gyroscope measured by the gyroscope. The data type of this variable is numeric.
40.  tBodyGyroscopeMagnitude-standarddeviation()
	Standard deviation of the body gyroscope measured by the gyroscope. The data type of this variable is numeric.
41.  tBodyGyroscopeJerkMagnitude-mean()
	Mean of the body gyroscope measured by the gyroscope. The data type of this variable is numeric.
42.  tBodyGyroscopeJerkMagnitude-standarddeviation()
	Standard deviation of the body gyroscope jerk measured by gyroscope. The data type of this variable is numeric.
43.  fBodyAcceleration-mean()-X
	Mean value of the frequency domain signals of the body acceleration measured by accelerometer in X-axis. The data type of this variable is numeric.
44.  fBodyAcceleration-mean()-Y
	Mean value of the frequency domain signals of the body acceleration measured by accelerometer in Y-axis. The data type of this variable is numeric.
45.  fBodyAcceleration-mean()-Z
	Mean value of the frequency domain signals of the body acceleration measured by accelerometer in Z-axis. The data type of this variable is numeric.
46.  fBodyAcceleration-standarddeviation()-X
	Standard deviation of the frequency domain signals of the body acceleration measured by accelerometer in X-axis. The data type of this variable is numeric.
47.  fBodyAcceleration-standarddeviation()-Y
	Standard deviation of the frequency domain signals of the body acceleration measured by accelerometer in Y-axis. The data type of this variable is numeric.
48.  fBodyAcceleration-standarddeviation()-Z
	Standard deviation of the frequency domain signals of the body acceleration measured by accelerometer in Z-axis. The data type of this variable is numeric.
49.  fBodyAccelerationJerk-mean()-X
	Mean of the frequency domain signals of the body acceleration jerk signals measured by accelerometer in X-axis. The data type of this variable is numeric.
50.  fBodyAccelerationJerk-mean()-Y
	Mean of the frequency domain signals of the body acceleration jerk signals measured by accelerometer in Y-axis. The data type of this variable is numeric.
51.  fBodyAccelerationJerk-mean()-Z
	Mean of the frequency domain signals of the body acceleration jerk signals measured by accelerometer in Z-axis. The data type of this variable is numeric.
52.  fBodyAccelerationJerk-standarddeviation()-X
	Standard deviation of the frequency domain signals of the body acceleration jerk signals measured by accelerometer in X-axis. The data type of this variable is numeric.
53.  fBodyAccelerationJerk-standarddeviation()-Y
	Standard deviation of the frequency domain signals of the body acceleration jerk signals measured by accelerometer in Y-axis. The data type of this variable is numeric.
54.  fBodyAccelerationJerk-standarddeviation()-Z
	Standard deviation of the frequency domain signals of the body acceleration jerk signals measured by accelerometer in Z-axis. The data type of this variable is numeric.
55.  fBodyGyroscope-mean()-X
	Mean of the body gyroscope in X-axis measured by the gyroscope. The data type of this variable is numeric.
56.  fBodyGyroscope-mean()-Y
	Mean of the body gyroscope in Y-axis measured by the gyroscope. The data type of this variable is numeric.
57.  fBodyGyroscope-mean()-Z
	Mean of the body gyroscope in Z-axis measured by the gyroscope. The data type of this variable is numeric.
58.  fBodyGyroscope-standarddeviation()-X
	Standard deviation of the body gyroscope in X-axis measured by the gyroscope. The data type of this variable is numeric.
59.  fBodyGyroscope-standarddeviation()-Y
	Standard deviation of the body gyroscope in Y-axis measured by the gyroscope. The data type of this variable is numeric.
60.  fBodyGyroscope-standarddeviation()-Z
	Standard deviation of the body gyroscope in Z-axis measured by the gyroscope. The data type of this variable is numeric.
61.  fBodyAccelerationMagnitude-mean()
	Mean of the body acceleration  measured by the accelerametor. The data type of this variable is numeric.
62.  fBodyAccelerationMagnitude-standarddeviation()
	Standard deviation of the body acceleration magnitude measured by the accelerametor. The data type of this variable is numeric.
63.  fBodyBodyAccelerationJerkMagnitude-mean()
	Mean of the body acceleration jerk signals measured by the accelerametor. The data type of this variable is numeric.
64.  fBodyBodyAccelerationJerkMagnitude-standarddeviation()
	Standard deviation of the body acceleration jerk signals measured by the accelerametor. The data type of this variable is numeric.
65.  fBodyBodyGyroscopeMagnitude-mean()
	Mean of the body acceleration gyroscope measured by the gyroscope. The data type of this variable is numeric.
66.  fBodyBodyGyroscopeMagnitude-standarddeviation()
	Standard deviation of the body gyroscode measured by the gyroscope. The data type of this variable is numeric.
67.  fBodyBodyGyroscopeJerkMagnitude-mean()
	Mean of the body gyroscope measured by the gyroscope. The data type of this variable is numeric.
68.  fBodyBodyGyroscopeJerkMagnitude-standarddeviation()
	Standard deviation of the body gyroscope jerk magnitude measured by the gyroscope. The data type of this variable is numeric.
	










