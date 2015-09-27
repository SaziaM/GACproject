==================================================================
README.md file for the script run_analysis.R for transformation of raw dataset to a tidy data set. 

==================================================================
Sazia Mahfuz
==================================================================
The script intends to use the given dataset achieved from the experiments which have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
The script run_analysis.R does the following operations over the given data set:
1. Merges the training and the test sets to create one data set.
2. Uses descriptive activity names to name the activities in the data  
   set
3. Appropriately labels the data set with descriptive variable names. 
4. Extracts only the measurements on the mean and standard deviation 
   for each measurement. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

The GACproject repository holds the following files:
=========================================

-- run_analysis.R : The R script for transformation of raw dataset to a tidy data set. 
-- README.md
-- Codebook.md : Description of the variables used in the R script
-- Dataset folder 


The Dataset folder includes the following files:
=========================================

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

