### analysis.R CodeBook

## Original Data
* DataSet: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
* DataSet Description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Requirements
* Merge the training and the test sets to create one data set.
* Extract only the measurements on the mean and standard deviation for each measurement. 
* Use descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

### What the program does
* Downloads the unaltered source file into the working directory with the filename: UCI HAR Dataset.zip
* Unzips the source file using the default extract location. This creates a directory called UCI HAR Dataset with the unzipped files
* Reads the activity_labels.txt file into a dataframe. This has the mapping between activity codes and their English names
* Reads the features.txt file into a datafram. This has the mapping between column numbers and their English names
* Extracts the column numbers that contain the text "mean()" and "std()". These are the columns we are interested in for this analysis
* Reads the feature values, the activities, and the subjects from the test directory, only the relevant columns are kept in the features dataframe
* Combines the test data from features, activities, and subjects data frames into a single data frame
* Reads the feature values, the activities, and the subjects from the train directory, only the relevant columns are kept in the features dataframe
* Combines the train data from features, activities, and subjects data frames into a single data frame
* Combines the test and train data frames
* Assigns column names to the combined data frame based on the feature data frame read in earlier
* Calculates the mean of the variables in the combined data frame by activity and subject
* Turns Activity into a factor variable in both the aggregated and combined data frames so it has readable names
* Write out the aggredated data frame as a tidy csv file


##Output Description
#Dataset Name: "UCI HAR Dataset Aggregate.csv"
#Variables
Activity							Factor variable with a value for one of 6 activities measured
Subject								Identifier for the the subject who performed the activity for each window sample. Its range is from 1 to 30. 
"tBodyAcc-mean()-X-avg"            	Average of the tBodyAcc-mean()-X measurement from the original dataset by Activity and Subject				
"tBodyAcc-mean()-Y-avg"            	Average of the tBodyAcc-mean()-Y measurement from the original dataset by Activity and Subject				
"tBodyAcc-mean()-Z-avg"            	Average of the tBodyAcc-mean()-Z measurement from the original dataset by Activity and Subject				
"tGravityAcc-mean()-X-avg"         	Average of the tGravityAcc-mean()-X measurement from the original dataset by Activity and Subject			
"tGravityAcc-mean()-Y-avg"         	Average of the tGravityAcc-mean()-Y	measurement from the original dataset by Activity and Subject
"tGravityAcc-mean()-Z-avg"         	Average of the tGravityAcc-mean()-Z	measurement from the original dataset by Activity and Subject		
"tBodyAccJerk-mean()-X-avg"        	Average of the tBodyAccJerk-mean()-X measurement from the original dataset by Activity and Subject			
"tBodyAccJerk-mean()-Y-avg"        	Average of the tBodyAccJerk-mean()-Y measurement from the original dataset by Activity and Subject			
"tBodyAccJerk-mean()-Z-avg"        	Average of the tBodyAccJerk-mean()-Z measurement from the original dataset by Activity and Subject			
"tBodyGyro-mean()-X-avg"           	Average of the tBodyGyro-mean()-X measurement from the original dataset by Activity and Subject				
"tBodyGyro-mean()-Y-avg"           	Average of the tBodyGyro-mean()-Y measurement from the original dataset by Activity and Subject				
"tBodyGyro-mean()-Z-avg"           	Average of the tBodyGyro-mean()-Z measurement from the original dataset by Activity and Subject				
"tBodyGyroJerk-mean()-X-avg"       	Average of the tBodyGyroJerk-mean()-X measurement from the original dataset by Activity and Subject			
"tBodyGyroJerk-mean()-Y-avg"       	Average of the tBodyGyroJerk-mean()-Y measurement from the original dataset by Activity and Subject			
"tBodyGyroJerk-mean()-Z-avg"       	Average of the tBodyGyroJerk-mean()-Z measurement from the original dataset by Activity and Subject			
"tBodyAccMag-mean()-avg"           	Average of the tBodyAccMag-mean() measurement from the original dataset by Activity and Subject				
"tGravityAccMag-mean()-avg"        	Average of the tGravityAccMag-mean() measurement from the original dataset by Activity and Subject			
"tBodyAccJerkMag-mean()-avg"       	Average of the tBodyAccJerkMag-mean() measurement from the original dataset by Activity and Subject			
"tBodyGyroMag-mean()-avg"          	Average of the tBodyGyroMag-mean() measurement from the original dataset by Activity and Subject				
"tBodyGyroJerkMag-mean()-avg"      	Average of the tBodyGyroJerkMag-mean() measurement from the original dataset by Activity and Subject			
"fBodyAcc-mean()-X-avg"            	Average of the fBodyAcc-mean()-X measurement from the original dataset by Activity and Subject				
"fBodyAcc-mean()-Y-avg"            	Average of the fBodyAcc-mean()-Y measurement from the original dataset by Activity and Subject				
"fBodyAcc-mean()-Z-avg"            	Average of the fBodyAcc-mean()-Z measurement from the original dataset by Activity and Subject				
"fBodyAccJerk-mean()-X-avg"        	Average of the fBodyAccJerk-mean()-X measurement from the original dataset by Activity and Subject			
"fBodyAccJerk-mean()-Y-avg"        	Average of the fBodyAccJerk-mean()-Y measurement from the original dataset by Activity and Subject			
"fBodyAccJerk-mean()-Z-avg"        	Average of the fBodyAccJerk-mean()-Z measurement from the original dataset by Activity and Subject			
"fBodyGyro-mean()-X-avg"           	Average of the fBodyGyro-mean()-X measurement from the original dataset by Activity and Subject				
"fBodyGyro-mean()-Y-avg"           	Average of the fBodyGyro-mean()-Y measurement from the original dataset by Activity and Subject				
"fBodyGyro-mean()-Z-avg"           	Average of the fBodyGyro-mean()-Z measurement from the original dataset by Activity and Subject				
"fBodyAccMag-mean()-avg"           	Average of the fBodyAccMag-mean() measurement from the original dataset by Activity and Subject				
"fBodyBodyAccJerkMag-mean()-avg"   	Average of the fBodyBodyAccJerkMag-mean() measurement from the original dataset by Activity and Subject		
"fBodyBodyGyroMag-mean()-avg"      	Average of the fBodyBodyGyroMag-mean() measurement from the original dataset by Activity and Subject			
"fBodyBodyGyroJerkMag-mean()-avg"  	Average of the fBodyBodyGyroJerkMag-mean() measurement from the original dataset by Activity and Subject		
"tBodyAcc-std()-X-avg"             	Average of the tBodyAcc-std()-X	measurement from the original dataset by Activity and Subject			
"tBodyAcc-std()-Y-avg"             	Average of the tBodyAcc-std()-Y	measurement from the original dataset by Activity and Subject			
"tBodyAcc-std()-Z-avg"             	Average of the tBodyAcc-std()-Z	measurement from the original dataset by Activity and Subject			
"tGravityAcc-std()-X-avg"          	Average of the tGravityAcc-std()-X measurement from the original dataset by Activity and Subject				
"tGravityAcc-std()-Y-avg"          	Average of the tGravityAcc-std()-Y measurement from the original dataset by Activity and Subject				
"tGravityAcc-std()-Z-avg"          	Average of the tGravityAcc-std()-Z measurement from the original dataset by Activity and Subject				
"tBodyAccJerk-std()-X-avg"         	Average of the tBodyAccJerk-std()-X measurement from the original dataset by Activity and Subject
"tBodyAccJerk-std()-Y-avg"         	Average of the tBodyAccJerk-std()-Y measurement from the original dataset by Activity and Subject
"tBodyAccJerk-std()-Z-avg"         	Average of the tBodyAccJerk-std()-Z measurement from the original dataset by Activity and Subject
"tBodyGyro-std()-X-avg"            	Average of the tBodyGyro-std()-X measurement from the original dataset by Activity and Subject
"tBodyGyro-std()-Y-avg"            	Average of the tBodyGyro-std()-Y measurement from the original dataset by Activity and Subject
"tBodyGyro-std()-Z-avg"            	Average of the tBodyGyro-std()-Z measurement from the original dataset by Activity and Subject
"tBodyGyroJerk-std()-X-avg"        	Average of the tBodyGyroJerk-std()-X measurement from the original dataset by Activity and Subject
"tBodyGyroJerk-std()-Y-avg"        	Average of the tBodyGyroJerk-std()-Y measurement from the original dataset by Activity and Subject
"tBodyGyroJerk-std()-Z-avg"        	Average of the tBodyGyroJerk-std()-Z measurement from the original dataset by Activity and Subject
"tBodyAccMag-std()-avg"            	Average of the tBodyAccMag-std() measurement from the original dataset by Activity and Subject
"tGravityAccMag-std()-avg"         	Average of the tGravityAccMag-std() measurement from the original dataset by Activity and Subject
"tBodyAccJerkMag-std()-avg"        	Average of the tBodyAccJerkMag-std() measurement from the original dataset by Activity and Subject
"tBodyGyroMag-std()-avg"           	Average of the tBodyGyroMag-std() measurement from the original dataset by Activity and Subject
"tBodyGyroJerkMag-std()-avg"       	Average of the tBodyGyroJerkMag-std() measurement from the original dataset by Activity and Subject
"fBodyAcc-std()-X-avg"             	Average of the fBodyAcc-std()-X measurement from the original dataset by Activity and Subject
"fBodyAcc-std()-Y-avg"             	Average of the fBodyAcc-std()-Y measurement from the original dataset by Activity and Subject
"fBodyAcc-std()-Z-avg"             	Average of the fBodyAcc-std()-Z measurement from the original dataset by Activity and Subject
"fBodyAccJerk-std()-X-avg"         	Average of the fBodyAccJerk-std()-X measurement from the original dataset by Activity and Subject
"fBodyAccJerk-std()-Y-avg"         	Average of the fBodyAccJerk-std()-Y measurement from the original dataset by Activity and Subject
"fBodyAccJerk-std()-Z-avg"         	Average of the fBodyAccJerk-std()-Z measurement from the original dataset by Activity and Subject
"fBodyGyro-std()-X-avg"            	Average of the fBodyGyro-std()-X measurement from the original dataset by Activity and Subject
"fBodyGyro-std()-Y-avg"            	Average of the fBodyGyro-std()-Y measurement from the original dataset by Activity and Subject
"fBodyGyro-std()-Z-avg"            	Average of the fBodyGyro-std()-Z measurement from the original dataset by Activity and Subject
"fBodyAccMag-std()-avg"            	Average of the fBodyAccMag-std() measurement from the original dataset by Activity and Subject
"fBodyBodyAccJerkMag-std()-avg"    	Average of the fBodyBodyAccJerkMag-std() measurement from the original dataset by Activity and Subject
"fBodyBodyGyroMag-std()-avg"       	Average of the fBodyBodyGyroMag-std() measurement from the original dataset by Activity and Subject
"fBodyBodyGyroJerkMag-std()-avg"   	Average of the fBodyBodyGyroJerkMag-std()measurement from the original dataset by Activity and Subject
