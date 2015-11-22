# Code Book

This file list and describe the variable names on the file "tidy.txt". The file includes two classes of variables: identifiers and measurements.

## Identifier Variables

There are two variables to identify each row:

 - Subject: an integer ID to identify the subject.
 - Activity: the activity name.

### Activities:

The activity variable can take any of the following variables:

  - Walking
  - Walking Upstairs
  - Walking Downstairs
  - Sitting
  - Standing
  - Laying

## Measurement Variables

"Float" type numbers representing the mean of each measurement variable from the original dataset. The mean was calculated for each activity and subject pair. 

 - Time domain body acceleration means:
  - tBodyAccMean-X
  - tBodyAccMean-Y 
  - tBodyAccMean-Z 
 - Time domain gravity acceleration means:
  - tGravityAccMean-X 
  - tGravityAccMean-Y 
  - tGravityAccMean-Z 
 - Time domain body jerk means:
  - tBodyAccJerkMean-X 
  - tBodyAccJerkMean-Y 
  - tBodyAccJerkMean-Z 
 - Time domain gyroscope means:
  - tBodyGyroMean-X 
  - tBodyGyroMean-Y 
  - tBodyGyroMean-Z 
 - Time domain gyroscope jerk means:
  - tBodyGyroJerkMean-X 
  - tBodyGyroJerkMean-Y 
  - tBodyGyroJerkMean-Z 
 - Time domain body acceleration magnitude mean:
  - tBodyAccMagMean 
 - Time domain gravity acceleration magnitude mean:
  - tGravityAccMagMean
 - Time domain body jerk magnitude mean:
  - tBodyAccJerkMagMean 
 - Time domain gyroscope magnitude mean:
  - tBodyGyroMagMean 
 - Time domain gyroscope jerk magnitude mean:
  - tBodyGyroJerkMagMean 
 - Frequency domain body acceleration means:
  - fBodyAccMean-X 
  - fBodyAccMean-Y 
  - fBodyAccMean-Z 
 - Frequency domain body jerk means:
  - fBodyAccJerkMean-X 
  - fBodyAccJerkMean-Y 
  - fBodyAccJerkMean-Z 
 - Frequency domain gyroscope means:
  - fBodyGyroMean-X 
  - fBodyGyroMean-Y 
  - fBodyGyroMean-Z 
 - Frequency domain body acceleration magnitude mean:
  - fBodyAccMagMean 
 - Frequency domain body jerk magnitude mean:
  - fBodyBodyAccJerkMagMean 
 - Frequency domain gyroscope magnitude mean:
  - fBodyBodyGyroMagMean 
 - Frequency domain gyroscope jerk magnitude mean:
  - fBodyBodyGyroJerkMagMean 

 - Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
  - angletBodyAccMean,gravity 
  - angletBodyAccJerkMean,gravityMean 
  - angletBodyGyroMean,gravityMean 
  - angletBodyGyroJerkMean,gravityMean 
  - angleX,gravityMean 
  - angleY,gravityMean 
  - angleZ,gravityMean 

 - Time domain body acceleration standard deviations:
  - tBodyAccSTD-X 
  - tBodyAccSTD-Y 
  - tBodyAccSTD-Z 
 - Time domain gravity acceleration standard deviations:
  - tGravityAccSTD-X 
  - tGravityAccSTD-Y 
  - tGravityAccSTD-Z 
 - Time domain body jerk standard deviations:
  - tBodyAccJerkSTD-X 
  - tBodyAccJerkSTD-Y 
  - tBodyAccJerkSTD-Z 
 - Time domain gyroscope standard deviation:
  - tBodyGyroSTD-X 
  - tBodyGyroSTD-Y 
  - tBodyGyroSTD-Z 
 - Time domain gyroscope jerk standard deviations:
  - tBodyGyroJerkSTD-X 
  - tBodyGyroJerkSTD-Y 
  - tBodyGyroJerkSTD-Z 
 - Time domain body acceleration magnitude standard deviation:
  - tBodyAccMagSTD 
 - Time domain gravity acceleration magnitude standard deviation:
  - tGravityAccMagSTD 
 - Time domain body jerk magnitude standard deviation:
  - tBodyAccJerkMagSTD 
 - Time domain gyroscope magnitude standard deviation:
  - tBodyGyroMagSTD 
 - Time domain gyroscope jerk magnitude standard deviation:
  - tBodyGyroJerkMagSTD 
 - Frequency domain body acceleration standard deviations:
  - fBodyAccSTD-X 
  - fBodyAccSTD-Y 
  - fBodyAccSTD-Z 
 - Frequency domain body jerk standard deviations:
  - fBodyAccJerkSTD-X 
  - fBodyAccJerkSTD-Y 
  - fBodyAccJerkSTD-Z 
 - Frequency domain gyroscope standard deviations:
  - fBodyGyroSTD-X 
  - fBodyGyroSTD-Y 
  - fBodyGyroSTD-Z 
 - Frequency domain body acceleration magnitude standard deviation:
  - fBodyAccMagSTD 
 - Frequency domain body jerk magnitude standard deviation:
  - fBodyBodyAccJerkMagSTD 
 - Frequency domain gyroscope magnitude standard deviation:
  - fBodyBodyGyroMagSTD 
 - Frequency domain gyroscope jerk magnitude standard deviation:
  - fBodyBodyGyroJerkMagSTD