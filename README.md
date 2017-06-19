
#  Coursera Getting and Cleaning Data Assignment

----------


##  Purpose
This assignment demonstrates how to work with data split among several sources,
how to combine and transform that data into a tidy data set and then perform summarizations
on the tidy data.

##  Outcome
When the **run_analysis.R** script is run, the resulting table is a tidy data set.  

The data is considered to be tidy when:

1. Each variable must have its own column.
2. Each observation must have its own row.
3. Each value must have its own cell.

source:  Hadley Wickham's paper on tidy data [http://http://www.jstatsoft.org/v59/i10/paper](http://http://www.jstatsoft.org/v59/i10/paper)   

The output of the script is tidy because each column represents a variable and each row represents an 
observation, in this case a subject's activity is measured across several smartphone sensor 
readings.  Additionally, all columns have descriptive names and all activities are have been converted from code numbers to descriptive activity name.

The assignment also requires that only the measurements on the mean and standard deviation for each measurement are extracted.  The method used to select those variable looks for the strings "mean()" and "std()" and not the strings "mean" and "std" since the latter would include several variables that are not means of measurement data, such as meanFreq, which is a weighted average and not a mean.  

##  Data Source

###This assignment uses a subset of data from the Human Activity Recognition Using Smartphones Dataset, Version 1.0 by:

---
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

Smartlab - Non Linear Complex Systems Laboratory

DITEN - Università degli Studi di Genova.

Via Opera Pia 11A, I-16145, Genoa, Italy.

activityrecognition@smartlab.ws

www.smartlab.ws

[http://http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

---

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:


- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

---

###The data used for the project is here:  
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).  

The files are split between test data, training data and two meta files as explained below.

- features.txt				- Contains the variable names for the test and training data
- activity_labels.txt		- Links the class labels with their activity name
- test\subject_test.txt		- Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30 
- test\y_test.txt			- Activity labels for the test set
- test\X-test.txt			- Test data set containing 561 variables
- train\subject_train.txt	- Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30 
- train\y_train.txt			- Activity labels for the train set
- train\X-train.txt			- Train data set containing 561 variables


Included in the github repository are the following files:

- This ReadMe file
- tidydata.txt			- The outcome data table from the project
- Codebook.MD			- A listing and description of all the variables in the tidydata.txt file
- run_analysis.R		- An R script detailing how to reproduce the tidydata.txt file

To read the tidydata.txt into R, use the following script with the file in your working directory.

		 read.table("tidydata.txt", header = TRUE, sep = ""

If you've read all the way to the bottom of this, thank you.




