# CodeBook

This is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.

## The data source

* Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## The data

The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

##Subject
The id of the subject for which the calculations are made.
All the values listed for the subject are the mean values
grouped by the subject's id and the activity that was carried
out.

##Activity
The column that indicates what the type of activity
done by the subject possible values are:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

## Transformation details

There are 5 parts:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## All of the following columns are averaged by Subject and Activity

tidydata.txt has 180 records with 88 variables.
- TimeBodyAccelerometerMeanX
- TimeBodyAccelerometerMeanY
- TimeBodyAccelerometerMeanZ
- TimeBodyAccelerometerSTDX
- TimeBodyAccelerometerSTDY
- TimeBodyAccelerometerSTDZ
- TimeGravityAccelerometerMeanX
- TimeGravityAccelerometerMeanY
- TimeGravityAccelerometerMeanZ
- TimeGravityAccelerometerSTDX
- TimeGravityAccelerometerSTDY
- TimeGravityAccelerometerSTDZ
- TimeBodyAccelerometerJerkMeanX
- TimeBodyAccelerometerJerkMeanY
- TimeBodyAccelerometerJerkMeanZ
- TimeBodyAccelerometerJerkSTDX
- TimeBodyAccelerometerJerkSTDY
- TimeBodyAccelerometerJerkSTDZ
- TimeBodyGyroscopeMeanX
- TimeBodyGyroscopeMeanY
- TimeBodyGyroscopeMeanZ
- TimeBodyGyroscopeSTDX
- TimeBodyGyroscopeSTDY
- TimeBodyGyroscopeSTDZ
- TimeBodyGyroscopeJerkMeanX
- TimeBodyGyroscopeJerkMeanY
- TimeBodyGyroscopeJerkMeanZ
- TimeBodyGyroscopeJerkSTDX
- TimeBodyGyroscopeJerkSTDY
- TimeBodyGyroscopeJerkSTDZ
- TimeBodyAccelerometerMagnitudeMean
- TimeBodyAccelerometerMagnitudeSTD
- TimeGravityAccelerometerMagnitudeMean
- TimeGravityAccelerometerMagnitudeSTD
- TimeBodyAccelerometerJerkMagnitudeMean
- TimeBodyAccelerometerJerkMagnitudeSTD
- TimeBodyGyroscopeMagnitudeMean
- TimeBodyGyroscopeMagnitudeSTD
- TimeBodyGyroscopeJerkMagnitudeMean
- TimeBodyGyroscopeJerkMagnitudeSTD
- FreqBodyAccelerometerMeanX
- FreqBodyAccelerometerMeanY
- FreqBodyAccelerometerMeanZ
- FreqBodyAccelerometerSTDX
- FreqBodyAccelerometerSTDY
- FreqBodyAccelerometerSTDZ
- FreqBodyAccelerometerMeanFreqX
- FreqBodyAccelerometerMeanFreqY
- FreqBodyAccelerometerMeanFreqZ
- FreqBodyAccelerometerJerkMeanX
- FreqBodyAccelerometerJerkMeanY
- FreqBodyAccelerometerJerkMeanZ
- FreqBodyAccelerometerJerkSTDX
- FreqBodyAccelerometerJerkSTDY
- FreqBodyAccelerometerJerkSTDZ
- FreqBodyAccelerometerJerkMeanFreqX
- FreqBodyAccelerometerJerkMeanFreqY
- FreqBodyAccelerometerJerkMeanFreqZ
- FreqBodyGyroscopeMeanX
- FreqBodyGyroscopeMeanY
- FreqBodyGyroscopeMeanZ
- FreqBodyGyroscopeSTDX
- FreqBodyGyroscopeSTDY
- FreqBodyGyroscopeSTDZ
- FreqBodyGyroscopeMeanFreqX
- FreqBodyGyroscopeMeanFreqY
- FreqBodyGyroscopeMeanFreqZ
- FreqBodyAccelerometerMagnitudeMean
- FreqBodyAccelerometerMagnitudeSTD
- FreqBodyAccelerometerMagnitudeMeanFreq- 
- FreqBodyAccelerometerJerkMagnitudeMean
- FreqBodyAccelerometerJerkMagnitudeSTD
- FreqBodyAccelerometerJerkMagnitudeMeanFreq
- FreqBodyGyroscopeMagnitudeMean
- FreqBodyGyroscopeMagnitudeSTD
- FreqBodyGyroscopeMagnitudeMeanFreq
- FreqBodyGyroscopeJerkMagnitudeMean
- FreqBodyGyroscopeJerkMagnitudeSTD
- FreqBodyGyroscopeJerkMagnitudeMeanFreq
- AngleTimeBodyAccelerometerMean,Gravity
- AngleTimeBodyAccelerometerJerkMean,GravityMean
- AngleTimeBodyGyroscopeMean,GravityMean
- AngleTimeBodyGyroscopeJerkMean,GravityMean
- AngleX,GravityMean
- AngleY,GravityMean
- AngleZ,GravityMean
- Activity
- Subject

