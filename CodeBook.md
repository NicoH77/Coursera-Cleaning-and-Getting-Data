Code Book
==================================
### Introduction
------------
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The main goal of this assesment is to prepare tidy data that can be used for later analysis.

This document is a code book that describes the variables, the data, and transformations performed to process data from UCI HAR dataset and issue a clean tidy dataset in a text file.

The main steps of data processing are the following :
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Those steps are described in the "Processing Data" Part.

### Data Source
--------------------
The data set "Human Activity Recognition Using Smartphones" has been taken from [UCI](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) web site.

This data source includes multiple files, stored in dedicated subfolders. For more information on this data source, please see the `README.txt` located under "UCI HAR Dataset" folder

Below are the file that are used for this project :
- features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training variables data.
- 'train/y_train.txt': activity identifiers.
- 'train/subject_train.txt' : Each row identifies the subject who performed the activity for each window sample.
- 'test/X_test.txt': Test variables data.
- 'test/y_test.txt': Test activity identifiers.
- 'test/subject_test.txt' : Each row identifies the subject who performed the activity for each window sample.


### Processing Data
-------------------
* STEP 1 - Merges the training and the test sets to create one data set.
> this step consists in merging rows from respective train & test files. This leads to 3 main data sets : X, Y, Subject
> * X : contains the measurements
> * Y : contains the activity identifiers
> * Subject : contains the subject identifier
> it is not required at this step to merge column from X, Y and Subjects (this can be done later on)

* STEP 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 
> The goal of this step is to subset the measurement dataset. IE, filter out measurements that are not mean or standard. 
> We will keep only the measurements which labels contains 'mean()' or 'std()'. The labels of measurements are stored in `Feature.txt` file

* STEP 3 - Uses descriptive activity names to name the activities in the data set
> This step consist in replacing activity identifier by a descriptive name. The descriptive name can be found in `activity_labels.txt` file

* STEP 4 - Appropriately labels the data set with descriptive variable names. 
> The goal of this step is to set descriptive column names for measurements into the clean dataset. The labels of measurements are stored in `Feature.txt` file. 
> For a better readability, the original measurements labels are transformed as following :
> * remove -()
> * remove - and upcase M (for Mean variables)
> * remove - and upcase S (for standard variables)

* STEP 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
> In this step, we aggregate all measurements by activity and subject. The calculated agregate is the mean.


### Output - tidy data
-----------------------
The features selected for this dataset come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ).  

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The tidy dataset only has mean and standard values of the above variables.

The output of this processing is a text file called `UCI_Tidy_Data.txt`, which has the following attributes


Column Name | Type | Description
----------- | ---- | -----------
Subject|num|subject who performed the activity
Activity|char|activity performed (ex : WALKING, SITTING)
tBodyAccMeanX|float| Body Acceleration Signal on X axis
tBodyAccMeanY|float|(see general description of tidy dataset)
tBodyAccMeanZ|float|(see general description of tidy dataset)
tBodyAccStdX|float|(see general description of tidy dataset)
tBodyAccStdY|float|(see general description of tidy dataset)
tBodyAccStdZ|float|(see general description of tidy dataset)
tGravityAccMeanX|float|(see general description of tidy dataset)
tGravityAccMeanY|float|(see general description of tidy dataset)
tGravityAccMeanZ|float|(see general description of tidy dataset)
tGravityAccStdX|float|(see general description of tidy dataset)
tGravityAccStdY|float|(see general description of tidy dataset)
tGravityAccStdZ|float|(see general description of tidy dataset)
tBodyAccJerkMeanX|float|(see general description of tidy dataset)
tBodyAccJerkMeanY|float|(see general description of tidy dataset)
tBodyAccJerkMeanZ|float|(see general description of tidy dataset)
tBodyAccJerkStdX|float|(see general description of tidy dataset)
tBodyAccJerkStdY|float|(see general description of tidy dataset)
tBodyAccJerkStdZ|float|(see general description of tidy dataset)
tBodyGyroMeanX|float|(see general description of tidy dataset)
tBodyGyroMeanY|float|(see general description of tidy dataset)
tBodyGyroMeanZ|float|(see general description of tidy dataset)
tBodyGyroStdX|float|(see general description of tidy dataset)
tBodyGyroStdY|float|(see general description of tidy dataset)
tBodyGyroStdZ|float|(see general description of tidy dataset)
tBodyGyroJerkMeanX|float|(see general description of tidy dataset)
tBodyGyroJerkMeanY|float|(see general description of tidy dataset)
tBodyGyroJerkMeanZ|float|(see general description of tidy dataset)
tBodyGyroJerkStdX|float|(see general description of tidy dataset)
tBodyGyroJerkStdY|float|(see general description of tidy dataset)
tBodyGyroJerkStdZ|float|(see general description of tidy dataset)
tBodyAccMagMean|float|(see general description of tidy dataset)
tBodyAccMagStd|float|(see general description of tidy dataset)
tGravityAccMagMean|float|(see general description of tidy dataset)
tGravityAccMagStd|float|(see general description of tidy dataset)
tBodyAccJerkMagMean|float|(see general description of tidy dataset)
tBodyAccJerkMagStd|float|(see general description of tidy dataset)
tBodyGyroMagMean|float|(see general description of tidy dataset)
tBodyGyroMagStd|float|(see general description of tidy dataset)
tBodyGyroJerkMagMean|float|(see general description of tidy dataset)
tBodyGyroJerkMagStd|float|(see general description of tidy dataset)
fBodyAccMeanX|float|(see general description of tidy dataset)
fBodyAccMeanY|float|(see general description of tidy dataset)
fBodyAccMeanZ|float|(see general description of tidy dataset)
fBodyAccStdX|float|(see general description of tidy dataset)
fBodyAccStdY|float|(see general description of tidy dataset)
fBodyAccStdZ|float|(see general description of tidy dataset)
fBodyAccJerkMeanX|float|(see general description of tidy dataset)
fBodyAccJerkMeanY|float|(see general description of tidy dataset)
fBodyAccJerkMeanZ|float|(see general description of tidy dataset)
fBodyAccJerkStdX|float|(see general description of tidy dataset)
fBodyAccJerkStdY|float|(see general description of tidy dataset)
fBodyAccJerkStdZ|float|(see general description of tidy dataset)
fBodyGyroMeanX|float|(see general description of tidy dataset)
fBodyGyroMeanY|float|(see general description of tidy dataset)
fBodyGyroMeanZ|float|(see general description of tidy dataset)
fBodyGyroStdX|float|(see general description of tidy dataset)
fBodyGyroStdY|float|(see general description of tidy dataset)
fBodyGyroStdZ|float|(see general description of tidy dataset)
fBodyAccMagMean|float|(see general description of tidy dataset)
fBodyAccMagStd|float|(see general description of tidy dataset)
fBodyBodyAccJerkMagMean|float|(see general description of tidy dataset)
fBodyBodyAccJerkMagStd|float|(see general description of tidy dataset)
fBodyBodyGyroMagMean|float|(see general description of tidy dataset)
fBodyBodyGyroMagStd|float|(see general description of tidy dataset)
fBodyBodyGyroJerkMagMean|float|(see general description of tidy dataset)
fBodyBodyGyroJerkMagStd|float|(see general description of tidy dataset)


