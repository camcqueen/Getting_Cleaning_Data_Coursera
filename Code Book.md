##CODE BOOK - For Final Results

**NOTE: This is a subset of the original Samsung Galazy S smartphone activity data. 
**For information on original dataset, please visit site listed at the bottom of this file.

FILE ARRANGEMENT:
Final Results is a wide table listing out each subject by activity.

Example:       

              Subject          Activity             Varables

                1   	        Walking                 ...

                1	        Walking Upstairs        ...

               ...


DATA DICTIONARY - For Final Results


Subject

	Participating Subject

 		Range 1:30, 30 total participants. 


Activity

	Activity monitored. Each subject participated in each activity.

		1. Walking
		2. Walking Upstairs
		3. Walking Downstairs
		4. Sitting
		5. Standing
		6. Laying


A complete list of the remaining final results dataset variables are listed below. 
	These variables are a subset from the original data set that related to "mean" or "standard deviation".

	
These variables were transformed by calulating average value of the original variable by activity and test subject. 


		tBodyAcc.mean...X
		tBodyAcc.mean...Y
		tBodyAcc.mean...Z
		tGravityAcc.mean...X
		tGravityAcc.mean...Y
		tGravityAcc.mean...Z
		tBodyAccJerk.mean...X
		tBodyAccJerk.mean...Y
		tBodyAccJerk.mean...Z
		tBodyGyro.mean...X
		tBodyGyro.mean...Y
		tBodyGyro.mean...Z
		tBodyGyroJerk.mean...X
		tBodyGyroJerk.mean...Y
		tBodyGyroJerk.mean...Z
		tBodyAccMag.mean..
		tGravityAccMag.mean..
		tBodyAccJerkMag.mean..
		tBodyGyroMag.mean..
		tBodyGyroJerkMag.mean..
		fBodyAcc.mean...X
		fBodyAcc.mean...Y
		fBodyAcc.mean...Z
		fBodyAcc.meanFreq...X
		fBodyAcc.meanFreq...Y
		fBodyAcc.meanFreq...Z
		fBodyAccJerk.mean...X
		fBodyAccJerk.mean...Y
		fBodyAccJerk.mean...Z
		fBodyAccJerk.meanFreq...X
		fBodyAccJerk.meanFreq...Y
		fBodyAccJerk.meanFreq...Z
		fBodyGyro.mean...X
		fBodyGyro.mean...Y
		fBodyGyro.mean...Z
		fBodyGyro.meanFreq...X
		fBodyGyro.meanFreq...Y
		fBodyGyro.meanFreq...Z
		fBodyAccMag.mean..
		fBodyAccMag.meanFreq..
		fBodyBodyAccJerkMag.mean..
		fBodyBodyAccJerkMag.meanFreq..
		fBodyBodyGyroMag.mean..
		fBodyBodyGyroMag.meanFreq..
		fBodyBodyGyroJerkMag.mean..
		fBodyBodyGyroJerkMag.meanFreq..
		angle.tBodyAccMean.gravity.
		angle.tBodyAccJerkMean..gravityMean.
		angle.tBodyGyroMean.gravityMean.
		angle.tBodyGyroJerkMean.gravityMean.
		angle.X.gravityMean.
		angle.Y.gravityMean.
		angle.Z.gravityMean.
		tBodyAcc.std...X
		tBodyAcc.std...Y
		tBodyAcc.std...Z
		tGravityAcc.std...X
		tGravityAcc.std...Y
		tGravityAcc.std...
		tBodyAccJerk.std...X
		tBodyAccJerk.std...Y
		tBodyAccJerk.std...Z
		tBodyGyro.std...X
		tBodyGyro.std...Y
		tBodyGyro.std...Z
		tBodyGyroJerk.std...X
		tBodyGyroJerk.std...Y
		tBodyGyroJerk.std...Z
		tBodyAccMag.std..
		tGravityAccMag.std..
		tBodyAccJerkMag.std..
		tBodyGyroMag.std..
		tBodyGyroJerkMag.std..
		fBodyAcc.std...X
		fBodyAcc.std...Y
		fBodyAcc.std...Z
		fBodyAccJerk.std...X
		fBodyAccJerk.std...Y
		fBodyAccJerk.std...Z
		fBodyGyro.std...X
		fBodyGyro.std...Y
		fBodyGyro.std...Z
		fBodyAccMag.std..
		fBodyBodyAccJerkMag.std..
		fBodyBodyGyroMag.std..
		fBodyBodyGyroJerkMag.std..		



*** For more information regarding the original data used to create this subset of data, please visit:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
