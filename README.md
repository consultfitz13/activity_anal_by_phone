activity_anal_by_phone
======================

Analysis of phone data to see if you can determine what activity is taking place through various phone measurements

## What it does
* Creates a tidy data set with the mean of selected variables from the original test and train datasets by Activity and Subject
* The selected variables from the original dataset are those the mean and standard deviation for each measurement

### Running the program
* Download the analysis.r program from Github 
* In R, set your working directory to the directory containing the analysis.R program using the setwd() function
* In R, source the program
* The program will combined selected variables from the test and training data or the original dataset into a well named data fram
* The program also produces a csv file called "UCI HAR Dataset Aggregate.csv" containing the mean of selected variables by Activity and Subject
