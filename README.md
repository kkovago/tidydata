# Assignment for "Getting and Cleaning  Data"

## Task
To create a script called run_analysis.R that:
* Uses the data from the following URL:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Data transformation process
* There is only one script file, run_analysis.R that goes throught the following steps:

## Data input and merge
* If the data directory does not exist yet, it downloads the zip file from the given URL and extracts the data directory with all its subdirectories and files.
* Activity and subject codes are separate files for training and test, just as the main data. So for both the test and training, the script reads the data, then adds to their rightmost columns the activity and subject codes.
* Then the prepared training and test data are merged into a new dataset.

## Extracting mean and standard deviation values
* Based on the description in the "features_info.txt" file, columns containing the following names need to be extracted:
    mean(): because they are mean values;
    meanFreq(): because these are weighted averages of frequency components;
    Mean): because they are averages of signal values;
    std(): because all columns contining std() are standard deviations;
    SubjectCode column because it contains the codes of subjects;
    ActivityCode column because it contains the codes of activities.
So for the extraction the following expression is used:grep("[Mm]ean|std|ActivityCode|SubjectCode")

## Using descriptive activity names
* The activity names are loaded from the appropriate file and merged into the data table using the ActivityCode.

## Using descriptive variable names
* A set of abbreviations in column names are replaced with more descriptive words. "-" characters are replaced with underscore ("_").

## Creating a tidy data set
* A new data set is created, without the ActivityCode column (it is redundant with the more descriptive Activity).

## Creating the averages of each variable for each activity and each subject
* The new data set is grouped by Activity and SubjectCode, then for each of its measures the mean is calculated. The result is in the tidyAverages data frame. As it cannot be effectively visualized on screen, the result is written into a file called "output.txt" for further analysis.




