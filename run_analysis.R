Here are the data for the project:
  
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following. 

1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement. 
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names. 
5) From the data set in step 4, creates a second, independent tidy data set with the average 
   of each variable for each activity and each subject.

### Files
   Archive:  UCI HAR Dataset.zip
   inflating: UCI HAR Dataset/activity_labels.txt  
   inflating: UCI HAR Dataset/features.txt  
   inflating: UCI HAR Dataset/features_info.txt  
   inflating: UCI HAR Dataset/README.txt  
   creating: UCI HAR Dataset/test/
     creating: UCI HAR Dataset/test/Inertial Signals/
     inflating: UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt  
   inflating: UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt  
   inflating: UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt  
   inflating: UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt  
   inflating: UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt  
   inflating: UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt  
   inflating: UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt  
   inflating: UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt  
   inflating: UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt  
   inflating: UCI HAR Dataset/test/subject_test.txt  
   inflating: UCI HAR Dataset/test/X_test.txt  
   inflating: UCI HAR Dataset/test/y_test.txt  
   creating: UCI HAR Dataset/train/
     creating: UCI HAR Dataset/train/Inertial Signals/
     inflating: UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt  
   inflating: UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt  
   inflating: UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt  
   inflating: UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt  
   inflating: UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt  
   inflating: UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt  
   inflating: UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt  
   inflating: UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt  
   inflating: UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt  
   inflating: UCI HAR Dataset/train/subject_train.txt  
   inflating: UCI HAR Dataset/train/X_train.txt  
   inflating: UCI HAR Dataset/train/y_train.txt  

### Load libraries
library(pylr)
library(tidyr)

### Download file if needed
datasetFile <- "UCI-HAR-Dataset.zip"
if (!file.exists(datasetFile)){
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", datasetFile, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
 unzip(datasetFile) 
}
   
### Read the file into a df

### Convert the df into a tdf