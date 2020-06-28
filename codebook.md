---
title: "Codebook - Getting and Cleaning Data Final Project Assignment"
author: "YYCGreg"
date: "26/06/2020"
output:
  html_document: default
---

## Project Desription
The purpose of this project is to collect measurement data from the Samsung Galaxy S smartphone, clean it, then produce a tidy data set for the mean measurement values based on the subject and the type of activity performed.

## Raw Data collection and description
The original data was collected by SmartLabs. More information on the original data collection
can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

* step 1 - downloaded data set from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

* step 2 - imported the test, train, activity, subject, and feature data into data frames
* step 3 - created keys for experiment ID and test group for each 

## Creating the tidy data sets
* **activity_data** - tidy data set of wearable device measurements
    * step 1 - merged the test, train, activity, subject, and feature data based on the keys into one data frame
    * step 2 - updated column names to be more descriptive
    * step 3 - included only the mean and standard deviation measurements in final data set
    * step 4 - sorted data by subject and activity

* **activity_mean** - tidy data set for the mean measurements grouped by subject and the activity       * step 1 - grouped the data by subject and activity
    * step 2 - calculated the mean for each variable by subject and activity
    * step 3 - renamed the columns to be more descriptive

## Description of the variable
* dimensions of data
  * activity_data - [10299,75]
  * activity_mean - [180,75]

* list of variables

### 1. activity_data variables ###

variable | 	Description | 	class
--- | 	--- | 	---
subjectID | 	ID for the subject that completed the test | 	integer
activity_desc | 	Description of the activity performed by the subject | 	character
time_Bodyfrom_accelerometer-std-X_axis | 	time domain_Bodyfrom_accelerometer-std-X_axis | 	numeric
time_Bodyfrom_accelerometer-std-Y_axis | 	time domain_Bodyfrom_accelerometer-std-Y_axis | 	numeric
time_Bodyfrom_accelerometer-std-Z_axis | 	time domain_Bodyfrom_accelerometer-std-Z_axis | 	numeric
time_Gravityfrom_accelerometer-std-X_axis | 	time domain_Gravityfrom_accelerometer-std-X_axis | 	numeric
time_Gravityfrom_accelerometer-std-Y_axis | 	time domain_Gravityfrom_accelerometer-std-Y_axis | 	numeric
time_Gravityfrom_accelerometer-std-Z_axis | 	time domain_Gravityfrom_accelerometer-std-Z_axis | 	numeric
time_Bodyfrom_accelerometerJerk-std-X_axis | 	time domain_Bodyfrom_accelerometerJerk-std-X_axis | 	numeric
time_Bodyfrom_accelerometerJerk-std-Y_axis | 	time domain_Bodyfrom_accelerometerJerk-std-Y_axis | 	numeric
time_Bodyfrom_accelerometerJerk-std-Z_axis | 	time domain_Bodyfrom_accelerometerJerk-std-Z_axis | 	numeric
time_BodyGyro-std-X_axis | 	time domain_BodyGyro-std-X_axis | 	numeric
time_BodyGyro-std-Y_axis | 	time domain_BodyGyro-std-Y_axis | 	numeric
time_BodyGyro-std-Z_axis | 	time domain_BodyGyro-std-Z_axis | 	numeric
time_BodyGyroJerk-std-X_axis | 	time domain_BodyGyroJerk-std-X_axis | 	numeric
time_BodyGyroJerk-std-Y_axis | 	time domain_BodyGyroJerk-std-Y_axis | 	numeric
time_BodyGyroJerk-std-Z_axis | 	time domain_BodyGyroJerk-std-Z_axis | 	numeric
time_Bodyfrom_accelerometerMag-std | 	time domain_Bodyfrom_accelerometerMag-std | 	numeric
time_Gravityfrom_accelerometerMag-std | 	time domain_Gravityfrom_accelerometerMag-std | 	numeric
time_Bodyfrom_accelerometerJerkMag-std | 	time domain_Bodyfrom_accelerometerJerkMag-std | 	numeric
time_BodyGyroMag-std | 	time domain_BodyGyroMag-std | 	numeric
time_BodyGyroJerkMag-std | 	time domain_BodyGyroJerkMag-std | 	numeric
frequency_Bodyfrom_accelerometer-std-X_axis | 	frquency domain_Bodyfrom_accelerometer-std-X_axis | 	numeric
frequency_Bodyfrom_accelerometer-std-Y_axis | 	frquency domain_Bodyfrom_accelerometer-std-Y_axis | 	numeric
frequency_Bodyfrom_accelerometer-std-Z_axis | 	frquency domain_Bodyfrom_accelerometer-std-Z_axis | 	numeric
frequency_Bodyfrom_accelerometerJerk-std-X_axis | 	frquency domain_Bodyfrom_accelerometerJerk-std-X_axis | 	numeric
frequency_Bodyfrom_accelerometerJerk-std-Y_axis | 	frquency domain_Bodyfrom_accelerometerJerk-std-Y_axis | 	numeric
frequency_Bodyfrom_accelerometerJerk-std-Z_axis | 	frquency domain_Bodyfrom_accelerometerJerk-std-Z_axis | 	numeric
frequency_BodyGyro-std-X_axis | 	frquency domain_BodyGyro-std-X_axis | 	numeric
frequency_BodyGyro-std-Y_axis | 	frquency domain_BodyGyro-std-Y_axis | 	numeric
frequency_BodyGyro-std-Z_axis | 	frquency domain_BodyGyro-std-Z_axis | 	numeric
frequency_Bodyfrom_accelerometerMag-std | 	frquency domain_Bodyfrom_accelerometerMag-std | 	numeric
frequency_BodyBodyfrom_accelerometerJerkMag-std | 	frquency domain_BodyBodyfrom_accelerometerJerkMag-std | 	numeric
frequency_BodyBodyGyroMag-std | 	frquency domain_BodyBodyGyroMag-std | 	numeric
frequency_BodyBodyGyroJerkMag-std | 	frquency domain_BodyBodyGyroJerkMag-std | 	numeric
time_Bodyfrom_accelerometer-mean-X_axis | 	time domain_Bodyfrom_accelerometer-mean-X_axis | 	numeric
time_Bodyfrom_accelerometer-mean-Y_axis | 	time domain_Bodyfrom_accelerometer-mean-Y_axis | 	numeric
time_Bodyfrom_accelerometer-mean-Z_axis | 	time domain_Bodyfrom_accelerometer-mean-Z_axis | 	numeric
time_Gravityfrom_accelerometer-mean-X_axis | 	time domain_Gravityfrom_accelerometer-mean-X_axis | 	numeric
time_Gravityfrom_accelerometer-mean-Y_axis | 	time domain_Gravityfrom_accelerometer-mean-Y_axis | 	numeric
time_Gravityfrom_accelerometer-mean-Z_axis | 	time domain_Gravityfrom_accelerometer-mean-Z_axis | 	numeric
time_Bodyfrom_accelerometerJerk-mean-X_axis | 	time domain_Bodyfrom_accelerometerJerk-mean-X_axis | 	numeric
time_Bodyfrom_accelerometerJerk-mean-Y_axis | 	time domain_Bodyfrom_accelerometerJerk-mean-Y_axis | 	numeric
time_Bodyfrom_accelerometerJerk-mean-Z_axis | 	time domain_Bodyfrom_accelerometerJerk-mean-Z_axis | 	numeric
time_BodyGyro-mean-X_axis | 	time domain_BodyGyro-mean-X_axis | 	numeric
time_BodyGyro-mean-Y_axis | 	time domain_BodyGyro-mean-Y_axis | 	numeric
time_BodyGyro-mean-Z_axis | 	time domain_BodyGyro-mean-Z_axis | 	numeric
time_BodyGyroJerk-mean-X_axis | 	time domain_BodyGyroJerk-mean-X_axis | 	numeric
time_BodyGyroJerk-mean-Y_axis | 	time domain_BodyGyroJerk-mean-Y_axis | 	numeric
time_BodyGyroJerk-mean-Z_axis | 	time domain_BodyGyroJerk-mean-Z_axis | 	numeric
time_Bodyfrom_accelerometerMag-mean | 	time domain_Bodyfrom_accelerometerMag-mean | 	numeric
time_Gravityfrom_accelerometerMag-mean | 	time domain_Gravityfrom_accelerometerMag-mean | 	numeric
time_Bodyfrom_accelerometerJerkMag-mean | 	time domain_Bodyfrom_accelerometerJerkMag-mean | 	numeric
time_BodyGyroMag-mean | 	time domain_BodyGyroMag-mean | 	numeric
time_BodyGyroJerkMag-mean | 	time domain_BodyGyroJerkMag-mean | 	numeric
frequency_Bodyfrom_accelerometer-mean-X_axis | 	frquency domain_Bodyfrom_accelerometer-mean-X_axis | 	numeric
frequency_Bodyfrom_accelerometer-mean-Y_axis | 	frquency domain_Bodyfrom_accelerometer-mean-Y_axis | 	numeric
frequency_Bodyfrom_accelerometer-mean-Z_axis | 	frquency domain_Bodyfrom_accelerometer-mean-Z_axis | 	numeric
frequency_Bodyfrom_accelerometerJerk-mean-X_axis | 	frquency domain_Bodyfrom_accelerometerJerk-mean-X_axis | 	numeric
frequency_Bodyfrom_accelerometerJerk-mean-Y_axis | 	frquency domain_Bodyfrom_accelerometerJerk-mean-Y_axis | 	numeric
frequency_Bodyfrom_accelerometerJerk-mean-Z_axis | 	frquency domain_Bodyfrom_accelerometerJerk-mean-Z_axis | 	numeric
frequency_BodyGyro-mean-X_axis | 	frquency domain_BodyGyro-mean-X_axis | 	numeric
frequency_BodyGyro-mean-Y_axis | 	frquency domain_BodyGyro-mean-Y_axis | 	numeric
frequency_BodyGyro-mean-Z_axis | 	frquency domain_BodyGyro-mean-Z_axis | 	numeric
frequency_Bodyfrom_accelerometerMag-mean | 	frquency domain_Bodyfrom_accelerometerMag-mean | 	numeric
frequency_BodyBodyfrom_accelerometerJerkMag-mean | 	frquency domain_BodyBodyfrom_accelerometerJerkMag-mean | 	numeric
frequency_BodyBodyGyroMag-mean | 	frquency domain_BodyBodyGyroMag-mean | 	numeric
frequency_BodyBodyGyroJerkMag-mean | 	frquency domain_BodyBodyGyroJerkMag-mean | 	numeric
angle(tBodyfrom_accelerometerMean,gravity) | 	angle(tBodyfrom_accelerometerMean,gravity) | 	numeric
angle(tBodyfrom_accelerometerJerkMean),gravityMean) | 	angle(tBodyfrom_accelerometerJerkMean),gravityMean) | 	numeric
angle(tBodyGyroMean,gravityMean) | 	angle(tBodyGyroMean,gravityMean) | 	numeric
angle(tBodyGyroJerkMean,gravityMean) | 	angle(tBodyGyroJerkMean,gravityMean) | 	numeric
angle(X_axis,gravityMean) | 	angle(X_axis,gravityMean) | 	numeric
angle(Y_axis,gravityMean) | 	angle(Y_axis,gravityMean) | 	numeric
angle(Z_axis,gravityMean) | 	angle(Z_axis,gravityMean) | 	numeric

### 2. activity_mean variables ###

variable | 	description | 	class
--- | 	--- | 	---
test_subject | 	ID for the subject that completed the test | 	integer
activity_desc | 	Description of the activity performed by the subject | 	character
mean_time_Bodyfrom_accelerometer-std-X_axis | 	The mean value for the time_Bodyfrom_accelerometer-std-X_axis measurement | 	numeric
mean_time_Bodyfrom_accelerometer-std-Y_axis | 	The mean value for the time_Bodyfrom_accelerometer-std-Y_axis measurement | 	numeric
mean_time_Bodyfrom_accelerometer-std-Z_axis | 	The mean value for the time_Bodyfrom_accelerometer-std-Z_axis measurement | 	numeric
mean_time_Gravityfrom_accelerometer-std-X_axis | 	The mean value for the time_Gravityfrom_accelerometer-std-X_axis measurement | 	numeric
mean_time_Gravityfrom_accelerometer-std-Y_axis | 	The mean value for the time_Gravityfrom_accelerometer-std-Y_axis measurement | 	numeric
mean_time_Gravityfrom_accelerometer-std-Z_axis | 	The mean value for the time_Gravityfrom_accelerometer-std-Z_axis measurement | 	numeric
mean_time_Bodyfrom_accelerometerJerk-std-X_axis | 	The mean value for the time_Bodyfrom_accelerometerJerk-std-X_axis measurement | 	numeric
mean_time_Bodyfrom_accelerometerJerk-std-Y_axis | 	The mean value for the time_Bodyfrom_accelerometerJerk-std-Y_axis measurement | 	numeric
mean_time_Bodyfrom_accelerometerJerk-std-Z_axis | 	The mean value for the time_Bodyfrom_accelerometerJerk-std-Z_axis measurement | 	numeric
mean_time_BodyGyro-std-X_axis | 	The mean value for the time_BodyGyro-std-X_axis measurement | 	numeric
mean_time_BodyGyro-std-Y_axis | 	The mean value for the time_BodyGyro-std-Y_axis measurement | 	numeric
mean_time_BodyGyro-std-Z_axis | 	The mean value for the time_BodyGyro-std-Z_axis measurement | 	numeric
mean_time_BodyGyroJerk-std-X_axis | 	The mean value for the time_BodyGyroJerk-std-X_axis measurement | 	numeric
mean_time_BodyGyroJerk-std-Y_axis | 	The mean value for the time_BodyGyroJerk-std-Y_axis measurement | 	numeric
mean_time_BodyGyroJerk-std-Z_axis | 	The mean value for the time_BodyGyroJerk-std-Z_axis measurement | 	numeric
mean_time_Bodyfrom_accelerometerMag-std | 	The mean value for the time_Bodyfrom_accelerometerMag-std measurement | 	numeric
mean_time_Gravityfrom_accelerometerMag-std | 	The mean value for the time_Gravityfrom_accelerometerMag-std measurement | 	numeric
mean_time_Bodyfrom_accelerometerJerkMag-std | 	The mean value for the time_Bodyfrom_accelerometerJerkMag-std measurement | 	numeric
mean_time_BodyGyroMag-std | 	The mean value for the time_BodyGyroMag-std measurement | 	numeric
mean_time_BodyGyroJerkMag-std | 	The mean value for the time_BodyGyroJerkMag-std measurement | 	numeric
mean_frequency_Bodyfrom_accelerometer-std-X_axis | 	The mean value for the frequency_Bodyfrom_accelerometer-std-X_axis measurement | 	numeric
mean_frequency_Bodyfrom_accelerometer-std-Y_axis | 	The mean value for the frequency_Bodyfrom_accelerometer-std-Y_axis measurement | 	numeric
mean_frequency_Bodyfrom_accelerometer-std-Z_axis | 	The mean value for the frequency_Bodyfrom_accelerometer-std-Z_axis measurement | 	numeric
mean_frequency_Bodyfrom_accelerometerJerk-std-X_axis | 	The mean value for the frequency_Bodyfrom_accelerometerJerk-std-X_axis measurement | 	numeric
mean_frequency_Bodyfrom_accelerometerJerk-std-Y_axis | 	The mean value for the frequency_Bodyfrom_accelerometerJerk-std-Y_axis measurement | 	numeric
mean_frequency_Bodyfrom_accelerometerJerk-std-Z_axis | 	The mean value for the frequency_Bodyfrom_accelerometerJerk-std-Z_axis measurement | 	numeric
mean_frequency_BodyGyro-std-X_axis | 	The mean value for the frequency_BodyGyro-std-X_axis measurement | 	numeric
mean_frequency_BodyGyro-std-Y_axis | 	The mean value for the frequency_BodyGyro-std-Y_axis measurement | 	numeric
mean_frequency_BodyGyro-std-Z_axis | 	The mean value for the frequency_BodyGyro-std-Z_axis measurement | 	numeric
mean_frequency_Bodyfrom_accelerometerMag-std | 	The mean value for the frequency_Bodyfrom_accelerometerMag-std measurement | 	numeric
mean_frequency_BodyBodyfrom_accelerometerJerkMag-std | 	The mean value for the frequency_BodyBodyfrom_accelerometerJerkMag-std measurement | 	numeric
mean_frequency_BodyBodyGyroMag-std | 	The mean value for the frequency_BodyBodyGyroMag-std measurement | 	numeric
mean_frequency_BodyBodyGyroJerkMag-std | 	The mean value for the frequency_BodyBodyGyroJerkMag-std measurement | 	numeric
mean_time_Bodyfrom_accelerometer-mean-X_axis | 	The mean value for the time_Bodyfrom_accelerometer-mean-X_axis measurement | 	numeric
mean_time_Bodyfrom_accelerometer-mean-Y_axis | 	The mean value for the time_Bodyfrom_accelerometer-mean-Y_axis measurement | 	numeric
mean_time_Bodyfrom_accelerometer-mean-Z_axis | 	The mean value for the time_Bodyfrom_accelerometer-mean-Z_axis measurement | 	numeric
mean_time_Gravityfrom_accelerometer-mean-X_axis | 	The mean value for the time_Gravityfrom_accelerometer-mean-X_axis measurement | 	numeric
mean_time_Gravityfrom_accelerometer-mean-Y_axis | 	The mean value for the time_Gravityfrom_accelerometer-mean-Y_axis measurement | 	numeric
mean_time_Gravityfrom_accelerometer-mean-Z_axis | 	The mean value for the time_Gravityfrom_accelerometer-mean-Z_axis measurement | 	numeric
mean_time_Bodyfrom_accelerometerJerk-mean-X_axis | 	The mean value for the time_Bodyfrom_accelerometerJerk-mean-X_axis measurement | 	numeric
mean_time_Bodyfrom_accelerometerJerk-mean-Y_axis | 	The mean value for the time_Bodyfrom_accelerometerJerk-mean-Y_axis measurement | 	numeric
mean_time_Bodyfrom_accelerometerJerk-mean-Z_axis | 	The mean value for the time_Bodyfrom_accelerometerJerk-mean-Z_axis measurement | 	numeric
mean_time_BodyGyro-mean-X_axis | 	The mean value for the time_BodyGyro-mean-X_axis measurement | 	numeric
mean_time_BodyGyro-mean-Y_axis | 	The mean value for the time_BodyGyro-mean-Y_axis measurement | 	numeric
mean_time_BodyGyro-mean-Z_axis | 	The mean value for the time_BodyGyro-mean-Z_axis measurement | 	numeric
mean_time_BodyGyroJerk-mean-X_axis | 	The mean value for the time_BodyGyroJerk-mean-X_axis measurement | 	numeric
mean_time_BodyGyroJerk-mean-Y_axis | 	The mean value for the time_BodyGyroJerk-mean-Y_axis measurement | 	numeric
mean_time_BodyGyroJerk-mean-Z_axis | 	The mean value for the time_BodyGyroJerk-mean-Z_axis measurement | 	numeric
mean_time_Bodyfrom_accelerometerMag-mean | 	The mean value for the time_Bodyfrom_accelerometerMag-mean measurement | 	numeric
mean_time_Gravityfrom_accelerometerMag-mean | 	The mean value for the time_Gravityfrom_accelerometerMag-mean measurement | 	numeric
mean_time_Bodyfrom_accelerometerJerkMag-mean | 	The mean value for the time_Bodyfrom_accelerometerJerkMag-mean measurement | 	numeric
mean_time_BodyGyroMag-mean | 	The mean value for the time_BodyGyroMag-mean measurement | 	numeric
mean_time_BodyGyroJerkMag-mean | 	The mean value for the time_BodyGyroJerkMag-mean measurement | 	numeric
mean_frequency_Bodyfrom_accelerometer-mean-X_axis | 	The mean value for the frequency_Bodyfrom_accelerometer-mean-X_axis measurement | 	numeric
mean_frequency_Bodyfrom_accelerometer-mean-Y_axis | 	The mean value for the frequency_Bodyfrom_accelerometer-mean-Y_axis measurement | 	numeric
mean_frequency_Bodyfrom_accelerometer-mean-Z_axis | 	The mean value for the frequency_Bodyfrom_accelerometer-mean-Z_axis measurement | 	numeric
mean_frequency_Bodyfrom_accelerometerJerk-mean-X_axis | 	The mean value for the frequency_Bodyfrom_accelerometerJerk-mean-X_axis measurement | 	numeric
mean_frequency_Bodyfrom_accelerometerJerk-mean-Y_axis | 	The mean value for the frequency_Bodyfrom_accelerometerJerk-mean-Y_axis measurement | 	numeric
mean_frequency_Bodyfrom_accelerometerJerk-mean-Z_axis | 	The mean value for the frequency_Bodyfrom_accelerometerJerk-mean-Z_axis measurement | 	numeric
mean_frequency_BodyGyro-mean-X_axis | 	The mean value for the frequency_BodyGyro-mean-X_axis measurement | 	numeric
mean_frequency_BodyGyro-mean-Y_axis | 	The mean value for the frequency_BodyGyro-mean-Y_axis measurement | 	numeric
mean_frequency_BodyGyro-mean-Z_axis | 	The mean value for the frequency_BodyGyro-mean-Z_axis measurement | 	numeric
mean_frequency_Bodyfrom_accelerometerMag-mean | 	The mean value for the frequency_Bodyfrom_accelerometerMag-mean measurement | 	numeric
mean_frequency_BodyBodyfrom_accelerometerJerkMag-mean | 	The mean value for the frequency_BodyBodyfrom_accelerometerJerkMag-mean measurement | 	numeric
mean_frequency_BodyBodyGyroMag-mean | 	The mean value for the frequency_BodyBodyGyroMag-mean measurement | 	numeric
mean_frequency_BodyBodyGyroJerkMag-mean | 	The mean value for the frequency_BodyBodyGyroJerkMag-mean measurement | 	numeric
mean_angle(tBodyfrom_accelerometerMean,gravity) | 	The mean value for the angle(tBodyfrom_accelerometerMean,gravity) measurement | 	numeric
mean_angle(tBodyfrom_accelerometerJerkMean),gravityMean) | 	The mean value for the angle(tBodyfrom_accelerometerJerkMean),gravityMean) measurement | 	numeric
mean_angle(tBodyGyroMean,gravityMean) | 	The mean value for the angle(tBodyGyroMean,gravityMean) measurement | 	numeric
mean_angle(tBodyGyroJerkMean,gravityMean) | 	The mean value for the angle(tBodyGyroJerkMean,gravityMean) measurement | 	numeric
mean_angle(X_axis,gravityMean) | 	The mean value for the angle(X_axis,gravityMean) measurement | 	numeric
mean_angle(Y_axis,gravityMean) | 	The mean value for the angle(Y_axis,gravityMean) measurement | 	numeric
mean_angle(Z_axis,gravityMean) | 	The mean value for the angle(Z_axis,gravityMean) measurement | 	numeric

