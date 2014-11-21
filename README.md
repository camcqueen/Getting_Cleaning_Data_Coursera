##Getting and Cleaning Data Course Project

Goal: Create a subset of original data in a tidy format that caluclates the average value of any variable pertaining to
mean or standard deviation by Activity and Subject.

##Running the script:

This script will download the data and convert the information into a tidy dataset with limited required changes.

1. This code requires you to have the original data stored in your working directory. 
	
	NOTE: If you are changing your working directory to somewhere other than your home directory, you will need to
	replace "~" with your working directory on lines 13, 26, 44, 46, 48, 50, 52, 54, 56, 58, 151.
	
	NOTE: Do not replace "~" in line 144. The "~" is not referencing your home directory and is part of the code.
	
	TIP: If you use NOTEPAD ++ (open source), you can find and replace all ~. If you use this option, make sure the
	code on line 144 (dcast()) retains the ~.


2. Throughout the code, "##" denotes comments that explain what each step will do. Each step is both commented before 
	and after the step to show where each step begins and ends.

3. "####" Denotes a required change based on the OS the user has. If running a Mac OS, no changes are needed to the file.
	
	NOTE: If you are using an operating system other than Mac OS, please change line 13 method = "curl" to "auto"

4. This file requires the package install of data.table and reshape2.
	
	NOTE: Each of these packages will return a warning stating the package was built under R version 3.1.2.

5. If you source this file into the R console, you will be prompted to select a cran mirror (I chose USA (CA 1)).
	The file will automatically process the raw data files sourced from the html location* (see below.)
	Results will be stored in your current working directory in a file called "finalresults.txt"
	
	NOTE: type getwd() into the R console to get the exact location of where the file is stored.

6. This script subsets the original data set based on ANY variable name from the original dataset containing 
	"mean" or "std" then averages each variable by Subject and Activity. 


##Install raw data into your working directory:

NOTE: Use your home directory for optimal use of the script.

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


