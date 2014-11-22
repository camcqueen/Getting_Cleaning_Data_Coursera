##Opens a connection to the data location.
fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
##Opens a connection to the data location.



##Creates a combined file for the working directory and the file name. 
##This will allow any user to process this file without changing their working directory.
workingdirectory <- getwd()
dest <- paste0(workingdirectory,"/UCI_Dataset.zip")
##Creates a combined file for the working directory and the file name. 
##This will allow any user to process this file without changing their working directory.



##Downloads the data file and places them in a destination of the end users choosing. Also, assigns a date for file download to aid version control.

#### - This section requires one setting change. 
	#### 1. method = ? "curl" applies to mac computers only. If this computer is not a mac, please change to method = "auto" and the same results will be generated.

download.file(fileUrl, destfile = dest, method = "curl")

dateDownloaded <- date()
##Downloads the data file and places them in a destination of the end users choosing. Also, assigns a date for file download to aid version control.

#### - This section requires one setting change. 
	#### 1. method = ? "curl" applies to mac computers only. If this computer is not a mac, please change to method = "auto" and the same results will be generated.



##Unzips the files.
unzip(dest, exdir = workingdirectory, unzip = "internal")
##Unzips the files.