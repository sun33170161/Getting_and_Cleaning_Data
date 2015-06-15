# Getting_and_Cleaning_Data

## Introduction
The run_analysis.R cleans the data collected from the accelerometers from the Samsung Galaxy S smartphone. The whole process includes the following steps:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set 
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

At the end of processes, the tidy data is written to the data's home directory.

## Code Book
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

There are 66 variables in the final data set. Every variable starts with a signal name, which will be stated later, a function name, either "mean()" or "std()", standing for the mean or the standard deviation of the signal, and a -X or -Y or -Z postfix, denoting 3-axial signals in the X, Y or Z directions. 

Here are all the signals:
* tBodyAcc: body acceleration
* tGravityAcc: gravity acceleration
* tBodyAccJerk: body acceleration Jerk signals
* tBodyGyro: body angular velocity
* tBodyGyroJerk: body angular velocity Jerk signals
* tBodyAccMag: Euclidean norm of body acceleration
* tGravityAccMag: Euclidean norm of gravity acceleration
* tBodyAccJerkMag: Euclidean norm of body acceleration Jerk signals
* tBodyGyroMag: Euclidean norm of body angular velocity
* tBodyGyroJerkMag: Euclidean norm of body angular velocity Jerk signals
* fBodyAcc: Fast Fourier Transform of body acceleration
* fBodyAccJerk: Fast Fourier Transform of body acceleration Jerk signals
* fBodyGyro: Fast Fourier Transform of body angular velocity
* fBodyAccMag: Fast Fourier Transform of Euclidean norm of body acceleration
* fBodyAccJerkMag: Fast Fourier Transform of body acceleration Jerk signals 
* fBodyGyroMag: Fast Fourier Transform of Euclidean norm of body angular velocity
* fBodyGyroJerkMag: Fast Fourier Transform of Euclidean norm of body acceleration Jerk signals

Every row of values are the average of each variable for each activity and each subject. And the rows are ordered by activity at first and subject secondly.
