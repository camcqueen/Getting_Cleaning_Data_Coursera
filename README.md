##Getting and Cleaning Data Course Project


Goal: Create a subset of original data in a tidy format that calculates the average value of any variable pertaining to
mean or standard deviation by Activity and Subject.

##Running the script:
This script will download the data and convert the information into a tidy dataset with limited required changes.

1. This code REQUIRES you to have the original data stored in your working directory.
	NOTE: If you need to download the raw data, 


2. Throughout the code, "##" denotes comments that explain what each step will do. Each step is both commented before 
	and after the step to show where each step begins and ends.

3. This file requires the package install of data.table and reshape2.
	
	NOTE: Each of these packages will return a warning stating the package was built under R version 3.1.2.

5. If you source this file into the R console, you will be prompted to select a cran mirror (I chose USA (CA 1)).
	The file will automatically process the raw data files sourced from the html location* (see below.)
	Results will be stored in your current working directory in a file called "finalresults.txt"
	
	NOTE: type getwd() into the R console to get the exact location of where the file is stored.

6. This script subsets the original data set based on ANY variable name from the original dataset containing 
	"mean" or "std" then averages each variable by Subject and Activity. 


##Install raw data into your working directory:

If you do not have the raw data already located in your working directory, please run “download file to working directory.r”. 
	NOTE: If you are not using a Mac OS, this will require a change on line 21 to the method=“curl” to method=“auto”.

HTML raw data location: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip\


##ORIGINAL DATA SET INFORMATION:

For more information regarding the original dataset, please visit 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
This original files contain:
- 'README.txt' - This README will provide more information on how to use the zipped files and information on the study.

- 'features_info.txt'

- 'features.txt': 

- 'activity_labels.txt':

- 'train/X_train.txt': 

- 'train/y_train.txt': 

- 'test/X_test.txt': 

- 'test/y_test.txt': .

- 'train/subject_train.txt': 

- 'train/Inertial Signals/total_acc_x_train.txt': Not used to generate the subset of data.

- 'train/Inertial Signals/body_acc_x_train.txt': Not used to generate the subset of data. 

- 'train/Inertial Signals/body_gyro_x_train.txt': Not used to generate the subset of data. 
