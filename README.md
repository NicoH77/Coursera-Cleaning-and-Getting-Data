Coursera-Cleaning-and-Getting-Data
==================================
### Introduction
------------
This repository is hosting the files for the assignment of the "Getting and Cleaning Data" course which will be peer assessed.

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The main goal of this assesment is to prepare tidy data that can be used for later analysis.

This repo is composed of the following files :
* `Readme.md` : this file
* `CodeBook.md` : it describes the variables, the data, and transformations that has been performed to clean up the raw data and issue a tidy dataset
* `UCI HAR Dataset` : this folder contains source data to be cleaned and transformed
* `run_analysis.R` : this script contains the R code to process UCI raw data and produce the tidy data set
* `TidyData.txt` : this test file contains the tidy data, output from the R script (run_analysis.R)

### Input - Raw Data
--------------------
The raw data "Human Activity Recognition Using Smartphones" has been taken from [UCI](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) web site.

### Instructions to process data
--------------------------------
1. Open the R script `run_analysis.R` in R-studio
2. Source the script - you might uncomment the STEP 0 if the raw data has not been downloaded yet

### Output - tidy data
----------------------
the R script `run_analysis.R` produce 2 files :
* `UCI_Clean_Data.txt` : optional (for test purposes) - this contains mean and standard deviation of each measurement per activity&subject (corresponding to step 4 of the assignment)
* `UCI_Tidy_Data.txt` : this contains the average of each variable for each activity and each subject (corresponding to step 5 of the assignment)
