############################################################
## Coursera - Getting and Cleaning Data
## Course Project (peer assessment)
## 
## Version : 1.0 -- submission
##
## This script reads data from UCI HAR Dataset folder from the UCI web site
## and issues a tidy data set which contains  the average of mean and std measurement 
## for each activity and each subject
##
###########################################################

## Script will need package "data.table" to be installed and loaded
if (!require("data.table")) {
  install.packages("data.table")
}

library(data.table)

## STEP 0 - Optional - this download the dataset from UCI web site. 
## Uncomment the 3 lines below if you need to download the data

## fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
## download.file(fileUrl, destfile = "Dataset.zip", method = "curl")
## unzip("Dataset.zip")

##
## STEP 1 - Merges the training and the test sets to create one data set.
##
  ## Reading test files
  X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
  y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
  subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

  ## reading training files
  X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
  y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
  subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

  ## Merging the test & training data in the 3 respective data frame
  X_main <- rbind(X_test, X_train)
  Y_main <- rbind(y_test, y_train)
  subject_main <- rbind(subject_test, subject_train)
  
##  
## STEP 2 - Extracts only the measurements on the mean and standard deviation for each measurement
##  
  ## Reading feature file
  features <- read.table("./UCI HAR Dataset/features.txt")
    
  ## getting the identifier of features to be kept
  idFeatures <- grep("mean\\(\\)|std\\(\\)", features[, 2])
  
  ## Subsetting X_main dataframe to keep only the required variables
  X_SubSet <- X_main[, idFeatures]
  
  ## changing the name of feature labels to be kept
  features[,2] = gsub('-mean', 'Mean', features[,2]) ## remove - and upcase M
  features[,2] = gsub('-std', 'Std', features[,2]) ## remove - and upcase S
  features[,2] = gsub('[-()]', '', features[,2]) ## remove -()
  
  ## setting appropriate names to the X_Subset data frame
  names(X_SubSet) <- features[idFeatures, 2]
  
##  
## STEP 3 - Uses descriptive activity names to name the activities in the data set
##
  ## Reading the activity labels file
  activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
  
  ## Setting the descriptive activity names to the data set
  Y_main [, 1] <- activity_labels[Y_main[, 1], 2]
  
##
## STEP 4 - Appropriately labels the data set with descriptive variable names
##
  ## Setting appropriate names to data set columns
  names(subject_main) <- "Subject"
  names(Y_main) <- "Activity"

  ## Creating the clean data set by merging Subjects, Activities and measurements
  cleanDataSet <- cbind(subject_main, Y_main, X_SubSet)
  
  ## Writing the clean data set into a text file -> for test purposes
  ## write.table(cleanDataSet, "UCI_Clean_Data.txt", row.names = FALSE)

##  
## STEP 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
##
  cleanDT <- data.table(cleanDataSet)
  tidyDataset <- cleanDT[,lapply(.SD,mean),by="Subject,Activity"]
  
  write.table(tidyDataset, "UCI_Tidy_Data.txt", row.names = FALSE)

## END scrip