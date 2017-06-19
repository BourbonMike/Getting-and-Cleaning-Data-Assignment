##################################################################################################
##                   Coursera Getting And Cleaning Data Assignment                              ## 
##                                                                                              ##
##  This script will use the data files downloaded from                                         ##
##  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip      ##
##  and combine the training and test files together with the data labels to create a tidy      ## 
##  data set.  Because systems differ, the file should be downloaded and extracted to your      ## 
##  working directory.                                                                          ##        
##                                                                                              ##  
##  The output of the script will be a tidy data set where:                                     ##
##      All variables will be clearly labelled                                                  ##
##      All activity codes will be replaced with actual activity names (i.e. WALKING, LAYING)   ##
##      Each row will represent an observation of a single event                                ##
##      Only the summarized means & standard deviations from the original data will be included ##
##      The rows will be grouped by subject and activity and means calculated for those groups  ##
##                                                                                              ##
##  The script requires the dplyr package, version 0.70.                                        ##
##                                                                                              ##
##################################################################################################


## Load the required package
library(dplyr)

## Load the required data files
## Starting with the files containing the descriptive variable names
## then changing the working directories as needed to load the test data, subject data and activity data
## changing working directories again to load the data for the training data sets

## Read in files containing descriptive data

setwd("~/Coursera Cleaning Data Assignment/UCI HAR Dataset")    ## Sets working diretory

features <- read.table("features.txt")                          ## Loads the file containing the column names for the data

activity_labels <- read.table("activity_labels.txt")            ## Loads the file containing the descriptive activity names

## Read in the files from the test data

setwd("~/Coursera Cleaning Data Assignment/UCI HAR Dataset/test")       ## Sets working diretory

X_test <- read.table("X_test.txt")                              ## Loads the file containing the test data
names(X_test) <- features[,2]                                   ## Creates the variable names from the features file

subject_test <- read.table("subject_test.txt")                  ## Loads the subject data for the test set
names(subject_test) <- "subject"                                ## Creates a name for the variable column

y_test <- read.table("y_test.txt")                              ## Loads the activity data for the test set

## Read in the files from the train data

setwd("~/Coursera Cleaning Data Assignment/UCI HAR Dataset/train")       ## Sets working diretory
X_train <- read.table("X_train.txt")                            ## Loads the file containing the train data
names(X_train) <- features[,2]                                  ## Creates the variable names from the features file

subject_train <- read.table("subject_train.txt")                ## Loads the subject data for the train set
names(subject_train) <- "subject"                               ## Creates a name for the variable column

y_train <- read.table("y_train.txt")                            ## Loads the activity data for the train set

setwd("~/Coursera Cleaning Data Assignment")                    ## Resets working directory

## Rename the activity numbers into descriptive activity names using dplyr and the pipe function (%>%)

y_test2 <- y_test %>%
        left_join(activity_labels, by = "V1") %>%               ## Joins the test activity numbers to the activity names
                select(V2)                                      ## Select only the column of activity names for the resulting data frame
names(y_test2) <- "activity"                                    ## Rename the variable make it more descriptive

y_train2 <- y_train %>%                                         
        left_join(activity_labels, by = "V1") %>%               ## Joins the train activity numbers to the activity names
        select(V2)                                              ## Select only the column of activity names for the resulting data frame
names(y_train2) <- "activity"                                   ## Rename the variable make it more descriptive

## Join the subject and activity data to the data using dplyr's bind_cols

test_data <- bind_cols(subject_test, y_test2, X_test)           ## Joins the columns of the test data together to make a single data frame
train_data <- bind_cols(subject_train, y_train2, X_train)       ## Joins the columns of the train data together to make a single data frame

## Combine the test and train data, select only the relevant columns to finalize the tidy data set
## Then group the data and calculate the means

tidy_data <- test_data %>%
        bind_rows(train_data) %>%                               ## Join the test_data and train_data data frames using dplyr's bind_rows
                select(1:2, matches("mean\\(\\)|std\\(\\)")) %>%    ## then select the columns containing "mean()" or "std()" in the column name
                        group_by(subject, activity) %>%         ## then group by activity and subject
                                summarize_all(mean)             ## prepare means for all non-grouped columns

## Write the tidy data to a table 

write.table(tidy_data, file = "tidydata.txt", row.names = FALSE, sep = " ")                     
