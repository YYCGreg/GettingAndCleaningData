## R script called run_analysis.R that:
## 1. Merges test and training data into tidy table including onlt the mean and 
##    std dev measurements
## 2. Creates a tidy table for the average of each of the mean/stddev variables 
##    for each subject and activity
##
## Refer to codebook and readMe file for more details

## load relevant packages
library(dplyr)
library(plyr)
library(stringr)

## download files and read in data

## load the features then rename columns to meaningful labels
features_data <- read.table("UCI HAR Dataset\\features.txt", header=F, col.names=c("id","feature"))
cnames <- features_data$feature
cnames <- gsub("\\()", "", cnames)
cnames <- gsub("^t", "time_", cnames)
cnames <- gsub("^f", "frequency_", cnames)
cnames <- gsub("Acc", "from_accelerometer", cnames)
cnames <- gsub("X", "X_axis", cnames)
cnames <- gsub("Y", "Y_axis", cnames)
cnames <- gsub("Z", "Z_axis", cnames)
cnames <- trimws(cnames)

## load experiments and add experiment ID and group as key for merging
test_set <- read.table("UCI HAR Dataset\\test\\X_test.txt")
colnames(test_set) <- cnames 
test_set <- 
        test_set %>%
        mutate(expID = as.numeric(row.names(.)), set_group="Test")

train_set <- read.table("UCI HAR Dataset\\train\\X_train.txt")
colnames(train_set) <- cnames
train_set <- 
        train_set %>%
        mutate(expID = as.numeric(row.names(.)), set_group="Train") %>%
        arrange(expID, set_group)


## load activities and add experiment ID and group as key for merging
test_activity <- 
        read.table("UCI HAR Dataset\\test\\y_test.txt", col.names="activityID") %>%
        mutate(expID = as.numeric(row.names(.)), set_group="Test") %>%
        arrange(expID, set_group)

train_activity <-
        read.table("UCI HAR Dataset\\train\\y_train.txt", col.names="activityID") %>%
        mutate(expID = as.numeric(row.names(.)), set_group="Train") %>%
        arrange(expID, set_group)

## load subjects based on activity and add experiment ID and group as key for merging
test_subject <- 
        read.table("UCI HAR Dataset\\test\\subject_test.txt", col.names = "subjectID") %>%
        mutate(expID = as.numeric(row.names(.)), set_group="Test") %>%
        arrange(expID, set_group)

train_subject <- 
        read.table("UCI HAR Dataset\\train\\subject_train.txt", col.names = "subjectID") %>%
        mutate(expID = as.numeric(row.names(.)), set_group="Train") %>%
        arrange(expID, set_group)
        
## load activity labels that link class with activity name
activity_labels <- read.table("UCI HAR Dataset\\activity_labels.txt", col.names=c("activityID","activity_desc"))

## merge the test group data on keys
df_testlist <- list(test_set, test_activity, test_subject)
mtest <- join_all(df_testlist)

## merge the train data group on keys
df_trainlist <- list(train_set, train_activity, train_subject)
mtrain <- join_all(df_trainlist)

## merge the training and test groups, add activity description then 
## Extract only the mean and stdev measurements for the experiments
activity_data <- rbind(mtest, mtrain) %>%
        join(activity_labels, by="activityID") %>%
        arrange(subjectID, activity_desc) %>%
        select(subjectID, activity_desc,(contains("std")|contains("mean"))) 

## create tidy data set with the average of each variable for each activity and each subject
activity_mean <- activity_data %>%
        group_by(subjectID, activity_desc) %>%
        summarise_all(mean)

## rename column names to descriptive variable names
cnames <- colnames(activity_mean)
cnames <- paste("mean_",cnames, sep="")
cnames <- sub("mean_subjectID","test_subject", cnames)
cnames <- sub("mean_activity_desc","activity_desc",cnames)
cnames <- trimws(cnames)
colnames(activity_mean) <- cnames

        

