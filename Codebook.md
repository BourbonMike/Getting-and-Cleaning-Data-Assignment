# Feature Selection - Updated

----------


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ 
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation 
- max(): Largest value in array
- min(): Smallest value in array
- sma(): Signal magnitude area
- energy(): Energy measure. Sum of the squares divided by the number of values. 
- iqr(): Interquartile range 
- entropy(): Signal entropy
- arCoeff(): Autorregresion coefficients with Burg order equal to 4
- correlation(): correlation coefficient between two signals
- maxInds(): index of the frequency component with largest magnitude
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- skewness(): skewness of the frequency domain signal 
- kurtosis(): kurtosis of the frequency domain signal 
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
- angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean



# The complete list of variables in the final tidy data set is below:
### Note that the mean and standard deviation features are normalized and bounded within [-1,1].

- subject			An ID number (1 30) assigned to each of the 30 participants in the study
- activity		Contains the six activities measured by the accelerometers and gyroscopes on the smartphone.
			The six activities are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
- tBodyAcc-mean()-X	Mean of the measured body linear accelerations in the X axis
- tBodyAcc-mean()-Y	Mean of the measured body linear accelerations in the Y axis
- tBodyAcc-mean()-Z	Mean of the measured body linear accelerations in the Z axis
- tBodyAcc-std()-X	Standard Deviation of the measured body linear accelerations in the X axis
- tBodyAcc-std()-Y	Standard Deviation of the measured body linear accelerations in the Y axis
- tBodyAcc-std()-Z	Standard Deviation of the measured body linear accelerations in the Z axis
- tGravityAcc-mean()-X	Mean and Standard Deviation of the measured gravity linear accelerations in the X axis
- tGravityAcc-mean()-Y	Mean of the measured gravity linear accelerations in the Y axis
- tGravityAcc-mean()-Z	Mean of the measured gravity linear accelerations in the Z axis
- tGravityAcc-std()-X	Standard Deviation of the measured gravity linear accelerations in the X axis
- tGravityAcc-std()-Y	Standard Deviation of the measured gravity linear accelerations in the Y axis
- tGravityAcc-std()-Z	Standard Deviation of the measured gravity linear accelerations in the Z axis
- tBodyAccJerk-mean()-X	Mean of the measured body jerk in the X axis
- tBodyAccJerk-mean()-Y	Mean of the measured body jerk in the Y axis
- tBodyAccJerk-mean()-Z	Mean of the measured body jerk in the Z axis
- tBodyAccJerk-std()-X	Standard Deviation of the measured body jerk in the X axis
- tBodyAccJerk-std()-Y	Standard Deviation of the measured body jerk in the Y axis
- tBodyAccJerk-std()-Z	Standard Deviation of the measured body jerk in the Z axis
- tBodyGyro-mean()-X	Mean of the measured body angular accelerations in the X axis
- tBodyGyro-mean()-Y	Mean of the measured body angular accelerations in the Y axis
- tBodyGyro-mean()-Z	Mean of the measured body angular accelerations in the Z axis
- tBodyGyro-std()-X	Standard Deviationof the measured body angular accelerations in the X axis
- tBodyGyro-std()-Y	Standard Deviationof the measured body angular accelerations in the Y axis
- tBodyGyro-std()-Z	Standard Deviationof the measured body angular accelerations in the Z axis
- tBodyGyroJerk-mean()-X	Mean of the measured body angular jerk in the X axis
- tBodyGyroJerk-mean()-Y	Mean of the measured body angular jerk in the Y axis
- tBodyGyroJerk-mean()-Z	Mean of the measured body angular jerk in the Z axis
- tBodyGyroJerk-std()-X	Standard Deviation of the measured body angular jerk in the X axis
- tBodyGyroJerk-std()-Y	Standard Deviation of the measured body angular jerk in the Y axis
- tBodyGyroJerk-std()-Z	Standard Deviation of the measured body angular jerk in the Z axis
- tBodyAccMag-mean()	Mean of the measured of the body linear acceleration magnitudes
- tBodyAccMag-std()	Standard Deviation of the measured of the body linear acceleration magnitudes
- tGravityAccMag-mean()	Mean of the measured of the gravity linear acceleration magnitudes
- tGravityAccMag-std()	Standard Deviation of the measured of the gravity linear acceleration magnitudes
- tBodyAccJerkMag-mean()	Mean of the measured of the body jerk acceleration magnitudes
- tBodyAccJerkMag-std()	Standard Deviation of the measured of the body jerk acceleration magnitudes
- tBodyGyroMag-mean()	Mean of the measured of the body angular acceleration magnitudes
- tBodyGyroMag-std()	Standard Deviation of the measured of the body angular acceleration magnitudes
- tBodyGyroJerkMag-mean()	Mean of the measured of the body angular jerk magnitudes
- tBodyGyroJerkMag-std()	Standard Deviation of the measured of the body angular jerk magnitudes
- fBodyAcc-mean()-X	Mean of the FFT body linear accelerations in the X axis
- fBodyAcc-mean()-Y	Mean of the FFT body linear accelerations in the Y axis
- fBodyAcc-mean()-Z	Mean of the FFT body linear accelerations in the Z axis
- fBodyAcc-std()-X	Standard Deviation of the FFT body linear accelerations in the X axis
- fBodyAcc-std()-Y	Standard Deviation of the FFT body linear accelerations in the Y axis
- fBodyAcc-std()-Z	Standard Deviation of the FFT body linear accelerations in the Z axis
- fBodyAccJerk-mean()-X	Mean of the FFT body linear jerk in the X axis
- fBodyAccJerk-mean()-Y	Mean of the FFT body linear jerk in the Y axis
- fBodyAccJerk-mean()-Z	Mean of the FFT body linear jerk in the Z axis
- fBodyAccJerk-std()-X	Standard Deviation of the FFT body linear jerk in the X axis
- fBodyAccJerk-std()-Y	Standard Deviation of the FFT body linear jerk in the Y axis
- fBodyAccJerk-std()-Z	Standard Deviation of the FFT body linear jerk in the Z axis
- fBodyGyro-mean()-X	Mean of the FFT of the body angular accelerations in the X axis
- fBodyGyro-mean()-Y	Mean of the FFT of the body angular accelerations in the Y axis
- fBodyGyro-mean()-Z	Mean of the FFT of the body angular accelerations in the Z axis
- fBodyGyro-std()-X	Standard Deviation of the FFT of the body angular accelerations in the X axis
- fBodyGyro-std()-Y	Standard Deviation of the FFT of the body angular accelerations in the Y axis
- fBodyGyro-std()-Z	Standard Deviation of the FFT of the body angular accelerations in the Z axis
- fBodyAccMag-mean()	Mean of the FFT of the body linear acceleration magnitudes
- fBodyAccMag-std()	Standard Deviation of the FFT of the body linear acceleration magnitudes
- fBodyBodyAccJerkMag-mean()	Mean of the FFT of the body linear jerk magnitudes
- fBodyBodyAccJerkMag-std()	Standard Deviation of the FFT of the body linear jerk magnitudes
- fBodyBodyGyroMag-mean()	Mean of the FFT of the body angular acceleration magnitudes
- fBodyBodyGyroMag-std()	Standard Deviation of the FFT of the body angular acceleration magnitudes
- fBodyBodyGyroJerkMag-mean()	Mean of the FFT of the body angular acceleration magnitudes
- fBodyBodyGyroJerkMag-std()	Standard Deviation of the FFT of the body angular acceleration magnitudes
