==================================================================
Code book for run_analysis.R

==================================================================
Sazia Mahfuz
==================================================================
-Train: The data frame containing data set given in Dataset/train/X_train.txt

-Train.label: The data frame containing data set given in Dataset/train/y_train.txt

-Test: The data frame containing data set given in Dataset/train/X_test.txt

-Test.label: The data frame containing data set given in Dataset/train/y_test.txt

-Train.subject: The data frame containing data set given in Dataset/train/subject_train.txt

-Test.subject: The data frame containing data set given in Dataset/train/subject_test.txt

-activity: The data frame containing data set given in Dataset/activity_labels.txt

-feature: The data frame containing data set given in Dataset/features.txt which lists all features

-temp: A vector for holding temporary data about test label or train label

-final.names: A data frame for containing the descriptive variable names for the final data set

-Final: A data frame for containing the merged train and test data set including the descriptive activity and subject information

-Mean.data: The indices of the variables from Final data frame with variable names containing the word "mean"

-Std.data: The indices of the variables from Final data frame with variable names containing the word "std" for standard deviation

-Data: The cumulative indices from Mean.data and Std.data

-Result: The data frame containing the tidy data set with the average of each variable for each activity and each subject


The complete transformation process in the run_analysis.R can be broken down into the folloswing steps:
=======================================
-Adding Descriptive Activity names to Test Data

-Adding Descriptive Activity names to Train Data

-Adding Subject information to Test Data

-Adding Subject information to Train Data

-Creating Descriptive variable names for the data

-Adding Descriptive variable names to the data

-Merging Train and test data with activity label, subject and variable names

-Determining the variable indices for mean and standard deviation measurements

-Extracting mean and standard deviation measurements from the merged data

-Creating Tidy data set with the average of each variable for each activity and each subject


