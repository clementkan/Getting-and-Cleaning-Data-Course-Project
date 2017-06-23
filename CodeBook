## CodeBook - Getting and Cleaning Data Course Project

Clement Kan

23 Jun 2017

### Overview
This codebook contains detailed description about the data, variables and transformations work I have performed to create the tidy data set, **tidy_dataset.txt**. Please refer to the **README.md** file for background information about the project.

### Data Source
[The data, **Human Activity Recognition Using Smartphones Data Set**, required for this project is available here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

A full description of the data set is available at the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) the site where the data was obtained.

### Source Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. Refer to the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) for more details.

### Tidy Data Set Information
The **tidy_dataset.txt** file contains the processed data that results from running the **run_analysis.R** code file. The transformations that were carried out to create the tidy data set based on the source data are presented in the Transformations section, description of the variables are available in the Variables section.

### Transformations

##### The following transformations were applied to the source data:
1. Merges the training and the test sets to create one data set using cbind and rbind function.
        
2. The source data contains a total of 561-features measurements. For the tidy data set, only the measurements on the mean and standard deviation for each measurement were extracted. The tidy data set contains 66-features measurements.

3. The `Activity` variable was originally coded as integer value of 1 to 6. Factor function was used to create descriptive activity names to replace the integer value.

4. The variable names were replaced with descriptive variable names. The gsub function for pattern replacement was used to clean up the variable names.

5. From the data set in step 4, a new data set with the average of each variable for each activity and each subject was created. This new data set is the **tidy_dataset.txt**.

### Variables
Each record contains, a subject identifier and an activity label, and its 66-features measurements on the mean and standard deviation.

- `Subject`
        Subject identifier of the 30 volunteers.

- `Activity`
	Activity labels: the activity performed by the person during the experiment.
	- WALKING
	- WALKING_UPSTAIRS
	- WALKING_DOWNSTAIRS
	- SITTING
	- STANDING
	- LAYING

- `TimeBodyAccelerometerMean-X`
        Mean time of body acceleration in X direction.

- `TimeBodyAccelerometerMean-Y`
        Mean time of body acceleration in Y direction.
        
- `TimeBodyAccelerometerMean-Z`
        Mean time of body acceleration in Z direction.

- `TimeBodyAccelerometerStdDev-X`
        Standard deviation of time of body acceleration in X direction.

- `TimeBodyAccelerometerStdDev-Y`
        Standard deviation of time of body acceleration in Y direction.

- `TimeBodyAccelerometerStdDev-Z`
        Standard deviation of time of body acceleration in Z direction.

- `TimeGravityAccelerometerMean-X`
        Mean time of gravity acceleration in X direction.

- `TimeGravityAccelerometerMean-Y`
        Mean time of gravity acceleration in Y direction.

- `TimeGravityAccelerometerMean-Z`
        Mean time of gravity acceleration in Z direction.

- `TimeGravityAccelerometerStdDev-X`
        Standard deviation of time of gravity acceleration in X direction.

- `TimeGravityAccelerometerStdDev-Y`
        Standard deviation of time of gravity acceleration in Y direction.

- `TimeGravityAccelerometerStdDev-Z`
        Standard deviation of time of gravity acceleration in Z direction.

- `TimeBodyAccelerometerJerkMean-X`
        Mean time of body acceleration jerk in X direction.
        
- `TimeBodyAccelerometerJerkMean-Y`
        Mean time of body acceleration jerk in Y direction.

- `TimeBodyAccelerometerJerkMean-Z`
        Mean time of body acceleration jerk in Z direction.

- `TimeBodyAccelerometerJerkStdDev-X`
        Standard deviation of time of body acceleration jerk in X direction.
        
- `TimeBodyAccelerometerJerkStdDev-Y`
        Standard deviation of time of body acceleration jerk in Y direction.
        
- `TimeBodyAccelerometerJerkStdDev-Z`
        Standard deviation of time of body acceleration jerk in Z direction.

- `TimeBodyGyroscopeMean-X`
        Mean time of body angular velocity in X direction.

- `TimeBodyGyroscopeMean-Y`
        Mean time of body angular velocity in Y direction.

- `TimeBodyGyroscopeMean-Z`
        Mean time of body angular velocity in Z direction.

- `TimeBodyGyroscopeStdDev-X`
        Standard deviation of time of body angular velocity in X direction.

- `TimeBodyGyroscopeStdDev-Y`
        Standard deviation of time of body angular velocity in Y direction.

- `TimeBodyGyroscopeStdDev-Z`
        Standard deviation of time of body angular velocity in Z direction.

- `TimeBodyGyroscopeJerkMean-X`
        Mean time of body angular velocity jerk in X direction.

- `TimeBodyGyroscopeJerkMean-Y`
        Mean time of body angular velocity jerk in Y direction.

- `TimeBodyGyroscopeJerkMean-Z`
        Mean time of body angular velocity jerk in Z direction.

- `TimeBodyGyroscopeJerkStdDev-X`
        Standard deviation of time of body angular velocity jerk in X direction.

- `TimeBodyGyroscopeJerkStdDev-Y`
        Standard deviation of time of body angular velocity jerk in Y direction.

- `TimeBodyGyroscopeJerkStdDev-Z`
        Standard deviation of time of body angular velocity jerk in Z direction.

- `TimeBodyAccelerometerMagnitudeMean`
        Mean time magnitude of body acceleration.

- `TimeBodyAccelerometerMagnitudeStdDev`
        Standard deviation of time magnitude of body acceleration.

- `TimeGravityAccelerometerMagnitudeMean`
        Mean time magnitude of gravity acceleration.
        
- `TimeGravityAccelerometerMagnitudeStdDev`
        Standard deviation of time magnitude of gravity acceleration.

- `TimeBodyAccelerometerJerkMagnitudeMean`
        Mean time magnitude of body acceleration jerk.

- `TimeBodyAccelerometerJerkMagnitudeStdDev`
        Standard deviation of time magnitude of body acceleration jerk.

- `TimeBodyGyroscopeMagnitudeMean`
        Mean time magnitude of body angular velocity. 

- `TimeBodyGyroscopeMagnitudeStdDev`
        Standard deviation of time magnitude of body angular velocity. 

- `TimeBodyGyroscopeJerkMagnitudeMean`
        Mean time magnitude of body angular velocity jerk.

- `TimeBodyGyroscopeJerkMagnitudeStdDev`
        Standard deviation of time magnitude of body angular velocity jerk.

- `FrequencyBodyAccelerometerMean-X`
        Mean frequency of body acceleration in X direction.

- `FrequencyBodyAccelerometerMean-Y`
        Mean frequency of body acceleration in Y direction.

- `FrequencyBodyAccelerometerMean-Z`
        Mean frequency of body acceleration in Z direction.

- `FrequencyBodyAccelerometerStdDev-X`
        Standard deviation of frequency of body acceleration in X direction.

- `FrequencyBodyAccelerometerStdDev-Y`
        Standard deviation of frequency of body acceleration in Y direction.
        
- `FrequencyBodyAccelerometerStdDev-Z`
        Standard deviation of frequency of body acceleration in Z direction.

- `FrequencyBodyAccelerometerJerkMean-X`
        Mean frequency of body acceleration jerk in X direction.

- `FrequencyBodyAccelerometerJerkMean-Y`
        Mean frequency of body acceleration jerk in Y direction.

- `FrequencyBodyAccelerometerJerkMean-Z`
        Mean frequency of body acceleration jerk in Z direction.

- `FrequencyBodyAccelerometerJerkStdDev-X`
        Standard deviation of frequency of body acceleration jerk in X direction.
        
- `FrequencyBodyAccelerometerJerkStdDev-Y`
        Standard deviation of frequency of body acceleration jerk in Y direction.
        
- `FrequencyBodyAccelerometerJerkStdDev-Z`
        Standard deviation of frequency of body acceleration jerk in Z direction.

- `FrequencyBodyGyroscopeMean-X`
        Mean frequency of body angular velocity in X direction.

- `FrequencyBodyGyroscopeMean-Y`
        Mean frequency of body angular velocity in Y direction.

- `FrequencyBodyGyroscopeMean-Z`
        Mean frequency of body angular velocity in Z direction.

- `FrequencyBodyGyroscopeStdDev-X`
        Standard deviation of frequency of body angular velocity in X direction.
        
- `FrequencyBodyGyroscopeStdDev-Y`
        Standard deviation of frequency of body angular velocity in Y direction.
        
- `FrequencyBodyGyroscopeStdDev-Z`
        Standard deviation of frequency of body angular velocity in Z direction.

- `FrequencyBodyAccelerometerMagnitudeMean`
        Mean frequency magnitude of body acceleration.

- `FrequencyBodyAccelerometerMagnitudeStdDev`
        Standard deviation of frequency magnitude of body acceleration.

- `FrequencyBodyAccelerometerJerkMagnitudeMean`
        Mean frequency magnitude of body acceleration jerk.

- `FrequencyBodyAccelerometerJerkMagnitudeStdDev`
        Standard deviation of frequency magnitude of body acceleration jerk.

- `FrequencyBodyGyroscopeMagnitudeMean`
        Mean frequency magnitude of body angular velocity.

- `FrequencyBodyGyroscopeMagnitudeStdDev`
        Standard deviation of frequency magnitude of body angular velocity.

- `FrequencyBodyGyroscopeJerkMagnitudeMean`
        Mean frequency magnitude of body angular velocity jerk.
        
- `FrequencyBodyGyroscopeJerkMagnitudeStdDev`
        Standard deviation of frequency magnitude of body angular velocity jerk.
