# CourseraGettingAndCleaningDataProject
CourseraGettingAndCleaningDataProject

This repository contains my code for the Coursera's Getting and Cleaning Data Course Project.

The main program "run_analysis.R" takes the dataset containing data collected from the accelerometers from the Samsung Galaxy S smartphone, and process it to obtain a new tidy dataset with the mean values for each activity and subject in the original dataset. From the original Variables we only take those corresponding to "mean"s and "std"s.

The R program has the following sections:

- Check if the dataset is present, otherwise it will download and unzip the corresponding file.
- Read the files with Activity Labels and Features, these will be use to replace Variable names and activity values with descriptive strings.
- Read the files with datasets for "training" and "testing". Merge data from different files (measurements, subject id, and activity), and apply the descriptive activity labels.
- Merge both datasets: testing and training.
- Rename the columns in the dataset with descriptive Variable names.
- Select only columns for Subject id, Activity, and features with Mean and STD
- Group the dataset by Activity and Subject and create a new tody dataset with the mean values for each variable (column).
- Write the new tidy dataset to a file.

The name of the variables are listed in the CodeBook.md file included in this repository.
