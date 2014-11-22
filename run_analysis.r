##Packages "data.table" and "reshape2" are necessary to complete this code. Please choose any CRAN mirror.
install.packages("data.table")

install.packages("reshape2")

library(data.table)

library(reshape2)
##Packages "data.table" and "reshape2" are necessary to complete this code. Please choose any CRAN mirror.


##Creates a combined file for the working directory and the file name. 
workingdirectory <- getwd() 
##This will allow any user to process this file without changing their working directory.

##Creates a combined file for the working directory and the file name. 
##This will allow any user to process this file without changing their working directory.
featurefile <- paste0(workingdirectory,"/UCI HAR Dataset/features.txt")
activitylabelfile <- paste0(workingdirectory,"/UCI HAR Dataset/activity_labels.txt")
subjecttestfile <- paste0(workingdirectory,"/UCI HAR Dataset/test/subject_test.txt")
ytestfile <- paste0(workingdirectory,"/UCI HAR Dataset/test/y_test.txt")
xtestfile <- paste0(workingdirectory,"/UCI HAR Dataset/test/X_test.txt")
subjecttrainfile <- paste0(workingdirectory,"/UCI HAR Dataset/train/subject_train.txt")
ytrainfile <- paste0(workingdirectory,"/UCI HAR Dataset/train/y_train.txt")
xtrainfile <- paste0(workingdirectory,"/UCI HAR Dataset/train/X_train.txt")
##Creates a combined file for the working directory and the file name. 
##This will allow any user to process this file without changing their working directory.

##Read zipped files into R memory.
feature <- read.table(featurefile, sep = " ", header = FALSE) 

activity_labels <- read.table(activitylabelfile, sep = " ", header = FALSE)		

subject_test <- read.table(subjecttestfile, sep = " ", header = FALSE, col.names="Subject")

y_test <- read.table(ytestfile, sep = " ", header = FALSE, col.names="Activity")

X_test <- read.table(xtestfile,  header = FALSE, nrows = 2947)

subject_train <- read.table(subjecttrainfile, sep = " ", header = FALSE, col.names="Subject")

y_train <- read.table(ytrainfile, sep = " ", header = FALSE, col.names="Activity")

X_train <- read.table(xtrainfile, header = FALSE, nrows = 7352)
##Read zipped files into R memory.





##Apply changes to zipped files to facilitate combining the data.
feature <- feature$V2
	##Subset only the feature elements. 

feature <- make.names(feature)
	##Renames elements to remove unusable characters like "()".


	
colnames(X_test) <- feature
colnames(X_train) <- feature	
	##Applies feature descriptions to the column names for test and train metrics.
##Apply changes to zipped files to facilitate combining the data.





##Combine the data into one file called dataset.
train <- cbind(X_train, subject_train, y_train)

test <- cbind(X_test, subject_test, y_test)

dataset <- rbind(train,test)
##Combine the data into one clean file called dataset.



##Creating an independent file to show the average of each mean and standard deviation metric in the file by subject by activity.


##Extract columns containing "mean", "std", "Activity", and "Subject".
meandata <- dataset[ , grepl( "mean" , names( dataset ), ignore.case=TRUE ) ]

stddata <- dataset[ , grepl( "std" , names( dataset ), ignore.case=TRUE ) ]

activitydata <- as.data.frame(dataset[ , 563 ])

subjectdata <- as.data.frame(dataset[ , 562 ])
##Extract columns containing "mean", "std", "Activity", and "Subject".




##Rename column names lost with subsetting.
colnames(activitydata) <- "Activity"
colnames(subjectdata) <- "Subject"
##Rename column names lost with subsetting.




##Combine subsetted data back into one file.
newdata <- cbind(subjectdata, activitydata,meandata,stddata)
##Combine subsetted data back into one file.





##Apply activity code translation from activity labels file to Activity column.
newdata_labels <- merge(activity_labels,newdata,by.x="V1",by.y="Activity")
	{
		setnames(newdata_labels, "V2", "Activity")
		setnames(newdata_labels, "V1", "Activity_Code")
		##Renames the merged columns to their descriptive name.
	}
##Apply activity code translation from activity labels file to Activity column.




##Reorder data by Subject and Activity. Remove Activity code.
orderdata <- newdata_labels[order(newdata_labels$Subject, newdata_labels$Activity),-1]
##Reorder data by Subject and Activity. Remove Activity code.




##Combine data and apply mean by Activity by Subject. 
meltdata <-  melt(orderdata, id.vars = c("Subject", "Activity"))

finalresults <- dcast(meltdata, Subject + Activity ~ variable, fun = mean)
##Combine data and apply mean by Activity by Subject. 

##Creates a combined file for the working directory and the file name. 
##This will allow any user to process this file without changing their working directory.
finalresultsfile <- paste0(workingdirectory,"/finalresults.txt")
##Creates a combined file for the working directory and the file name. 
##This will allow any user to process this file without changing their working directory.


##Export final results to project directory.
write.table(finalresults, file = finalresultsfile, append = FALSE, sep = " ", col.names = TRUE, row.names = FALSE)
##Export final results to project directory.