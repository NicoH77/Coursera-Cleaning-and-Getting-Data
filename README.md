Coursera-Cleaning-and-Getting-Data
==================================
### Introduction
------------
This repository is hosting the files for the assignment of the "Getting and Cleaning Data" course which will be peer assessed.

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The main goal of this assesment is to prepare tidy data that can be used for later analysis.

This repo is composed of the following files :
* `Readme.md` : this file
* `CodeBook.md` : it describes the variables, the data, and transformations that has been performed to clean up the data
* `UCI HAR Dataset` : this folder contains source datasets to be cleaned and transformed
* `run_analysis.R` : this script contains the R code to process UCI raw data and produce the tidy data set
* `TidyData.txt` : this test file contains the tidy data, output from the R script (run_analysis.R)

### Input - Data Set
--------------------
The data set "Human Activity Recognition Using Smartphones" has been taken from [UCI](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) web site.

### Processing Data
-------------------
1. Open the R script `run_analysis.r` in R-studio
2. the script can be executed as it is

### Output - tidy data
----------------------
the R script `run_analysis.r` produce 2 files :
* `Clean_Data.txt` : this contains mean and standard deviation of each measurement per activity&subject (corresponding to step 4 of the assignment)
* `Tidy_Data.txt` : this contains the average of each variable for each activity and each subject (corresponding to step 5 of the assignment)
