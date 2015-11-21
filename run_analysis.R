###############################
### This code is the Getting and Cleaning Data Course Project
### 
### Student:  Edwin F. Boza
### Date:     21/Nov/2015
### 

### Load libraries
library(dplyr)

### Download file if needed, and unzip it.
datasetFile <- "UCI-HAR-Dataset.zip"
if (!file.exists(datasetFile)){
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", datasetFile, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
 unzip(datasetFile) 
}
   
### Read the files with Activity Labels and Features
### Convert to tbl_dt
dataTable <- read.table("UCI HAR Dataset/activity_labels.txt")
activities <- tbl_dt(dataTable)
dataTable <- read.table("UCI HAR Dataset/features.txt")
features <- tbl_dt(dataTable)
### Remove the () symbols and replace Mean and STD names.
features <- mutate(features,V2 = gsub("[()]", "", V2))
features <- mutate(features,V2 = gsub("-mean", "Mean", V2))
features <- mutate(features,V2 = gsub("-std", "STD", V2))

### Read the files with datasets
### Convert to tbl_dt and join them
### Descriptive activity labels are applied in this step.
dataTable <- read.table("UCI HAR Dataset/train/X_train.txt")
training <- tbl_dt(dataTable)
dataTable <- read.table("UCI HAR Dataset/train/subject_train.txt")
training <- cbind("Subject" = tbl_dt(dataTable), training)
dataTable <- read.table("UCI HAR Dataset/train/y_train.txt")
training <- cbind("Activity" = tbl_dt(activities$V2[dataTable$V1]), training)

dataTable <- read.table("UCI HAR Dataset/test/X_test.txt")
testing <- tbl_dt(dataTable)
dataTable <- read.table("UCI HAR Dataset/test/subject_test.txt")
testing <- cbind("Subject" = tbl_dt(dataTable), testing)
dataTable <- read.table("UCI HAR Dataset/test/y_test.txt")
testing <- cbind("Activity" = tbl_dt(activities$V2[dataTable$V1]), testing)

### Bind/Merge both datasets: testing and training
dataset <- rbind(training,testing)

### Rename the columns in the dataset with descriptive Variable names.
colnames(dataset) <- c("Activity", "Subject", features$V2)

### Select only columns for Subject id, Activity, and features with Mean and STD
dataset <- select(dataset, Subject, Activity, contains("Mean"), contains("STD"))

### Group the dataset by Activity and Subject
byActivitySubject <- group_by(dataset, Activity, Subject)

### Create the new tidy dataset with the mean for each variable (column)
tidy <- summarise_each(byActivitySubject,funs(mean))

### Write tidy dataset to a file
write.table(tidy, "tidy.txt", row.names = FALSE, quote = FALSE)
