## Requirements:
## Merges the training and the test sets to create one data set.
## Extracts only the measurements on the mean and standard deviation for each measurement.
## Uses descriptive activity names to name the activities in the data set
## Appropriately labels the data set with descriptive variable names.
## From the data set in step 4, creates a second, independent tidy data set with the 
##   average of each variable for each activity and each subject.

## Load libraries
library(data.table)
library(dplyr)

## Define "constants"
# Data file URL
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# Data directory name
dataDirName <- "UCI HAR Dataset"
# Data column names
colFileName <- "UCI HAR Dataset/features.txt"
# Activity lables
activityFileName  <- "UCI HAR Dataset/activity_labels.txt"
# Test and training data files
testFileName <- "UCI HAR Dataset/test/X_test.txt"
testActivityFileName <- "UCI HAR Dataset/test/y_test.txt"
testSubjectFileName <- "UCI HAR Dataset/test/subject_test.txt"
trainFileName <- "UCI HAR Dataset/train/X_train.txt"
trainActivityFileName <- "UCI HAR Dataset/train/y_train.txt"
trainSubjectFileName <- "UCI HAR Dataset/train/subject_train.txt"

## If a local copy of the data directory structure does not exist yet, it downloads the zip file
##  and extracts the whole directory and file structure into the local working directory
if(!file.exists(dataDirName)){
    print.noquote("Downloading and extracting data files....")
    # Download zip file cntaining folders and files into a temporary file
    temp <- tempfile()
    download.file(fileURL,temp)
    # Unzip the zip file
    unzip(temp)
    # Remove the temporary file
    unlink(temp)
}

## 1) Merge the training and the test sets to create one data set.
# Load each dataset into its own table then merge them. This is not
# optimal for the memory, but cleanly shows the algorithm.
# Start with the column names, which is a tab delimited file
print.noquote("Reading column names, training and test data, activities and subjects...")

# Read the test data, activity and subject codes
datTest <- fread(testFileName, data.table=TRUE)
actTest <- fread(testActivityFileName, data.table=TRUE)
subjTest <- fread(testSubjectFileName, data.table=TRUE)
# Add the activity and subject codes to the data
datTest <- cbind(datTest,actTest,subjTest)

# Read the training data activity and subject codes
datTrain <- fread(trainFileName, data.table=TRUE)
actTrain <- fread(trainActivityFileName, data.table=TRUE)
subjTrain <- fread(trainSubjectFileName, data.table=TRUE)
# Add the activity and subject codes to the data
datTrain <- cbind(datTrain,actTrain,subjTrain)

# Read the file with column names; the second column contains the names
datName <- fread(colFileName)[,V2]
# Add column name for the activity and subject codes
datName <- c(datName,"ActivityCode","SubjectCode")

# Merge the training and test tables
print.noquote("Merging data")
dat <- as.data.frame(rbind(datTrain, datTest))
# Assign the column names to the data
names(dat) <- datName
print.noquote(paste("The merged data has", nrow(dat),"rows and",ncol(dat),"columns."))

## 2) Extract only the measurements on the MEAN and STANDARD DEVIATION 
## for EACH MEASUREMENT.
# Based on the description in the "features_info.txt" file, 
# the following columns contain MEANS and therefore need to be extracted:
#   columns containing:
#       mean() 
#       meanFreq(): because the latter is a weighted average of frequency components
#       Mean): because they are averages of signal values
# The following columns contain STANDARD DEVIATIONS:
#   all column names containing std()
# Plus the ActityCode and SubjectCode that I added also need to be extracted.
# These can be achieved with grep("[Mm]ean|std|ActivityCode|SubjectCode")

# The data has some duplicated column names. None of them contain mean or std,
# so they can be removed.
dat1 <- dat[,!duplicated(colnames(dat))]
# Select columns to extract and put them in a new data table
selectedCols <- grep("[Mm]ean|std|ActivityCode|SubjectCode",names(dat1))
newdat <- select(dat1,selectedCols)
print.noquote("Mean and standard deviation columns extracted")

## 3)Use descriptive activity names to name the activities in the data set
# Read activity data and assign column names for easy merge
actLabels <- fread(activityFileName, data.table=TRUE)
names(actLabels) <- c("ActivityCode","Activity")
# Merge data and activity tables
newdat <- merge(newdat, actLabels, by="ActivityCode")
print.noquote("Activity labels added")

## 4) Appropriately labels the data set with descriptive variable names.
# The columns are already named from the features.txt
# As I am not sure what is expecte by "descriptive" variable names,
# I change some abbreviations in column names to be more straightforward.
varAbbrev  <- c("-","Acc","Mag","Freq")
varReplaceWith <- c("_","Acceleration","Magnitude","Frequency")
for(i in 1:length(varAbbrev)){
    colnames(newdat) <- gsub(varAbbrev[i],varReplaceWith[i],colnames(newdat))
}
print.noquote("Replacing some abbreviations in variable names to be more descriptive:")
print.noquote(c(paste("  ",head(colnames(newdat),5)),"   ...",paste("  ",tail(colnames(newdat)))))

## 5) From the data set in step 4, create a second, independent tidy data set with 
## the average of each variable for each activity and each subject.
# Acivity and ActivityCode are redundant, so remove ActivityCode to get tidy data
tidyDat <- select(newdat, -ActivityCode)
print.noquote("The average of each variable, grouped by Activity and Subject:")
tidyAverages <- summarize_each(group_by(tidyDat,Activity,SubjectCode), funs(mean))
# Write the output to a file so it can be analyzed
write.csv(tidyAverages, file="output.csv")
print(tidyAverages)
