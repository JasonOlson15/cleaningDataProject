---
title: "Summarized Motion Data"
author: "Jason Olson"
date: "Wednesday, May 20, 2015"
output: html_document
---

## Summary Description
There are two parts to this development. The first is the consolidation and preparation 
of data coming from accelerometers from the Samsung Galaxy S smartphone into a "Tidy 
Data" format. The raw data that was used can be obtained here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The data itself is broken down by activity (walking, running, etc.), subject (Ids 1-30 
representing each individual who participated in the test) and then the independent 
measures (features) which were collected. You can read additional details regarding 
the raw data within the README.txt which accompanies the data in the zip file.

The next step which was performed is aggregating the data by activity and subject. The
mean was calculated for each feature broken down by activity and subject. The 
summarized tables was output as "summarizedMotionData.txt" in the end. Note that only
the Mean and Standard Deviation features were included in the final result set.

## Details about processing
* The zip file referenced in the summary section must be extracted into the working 
directory. If done properly the result should be activity_labels.txt, features.txt,
features_info.txt and README.txt in your working directly along with a test and train
folder. Note that depending on your method of extracting a zip file you may need to 
copy and paste the files/folders to your working directory as specified.
* dply and data.table libraries are required to execute script.
* To start the function loadData() must be executed.

## Detailed Description of Processing
1. Load the data.table and dply libraries as they are leveraged throughout the 
function.
2. Read in X_test.txt, Y_test.txt and subject_test.txt within the "test" folder and
X_train.txt, Y_train.txt and subject_train.txt within the "train" folder.
3. Bind the y_test to the x_test data frame to bring the ActivityID together with the
observations.
4. Bind the y_train to the x_train data frame to bring the ActivityID together with 
the observations.
5. Bind the subject_test to the x_test data frame to bring the SubjectID together 
with the observations.
6. Bind the subject_train to the x_train data frame to bring the SubjectID together 
with the observations.
7. Merge the test and the train data frames together to make one larger data frame
including all observations.
8. Read in the features.txt file from the root directory which contains the 
descriptive names for each feature.
9. Set the column names to use the descriptive names from feature.txt.
10. Remove any features which are not a mean or standard deviation measure.
11. Read in the activity_labels.txt file which contains the description activity
names.
12. Merge the activity lables data with the full dataset and then drop the 
ActivityID leaving us with ActivityName to describe the observations.
13. Create a final data.frame which averages the observations per feature by 
activity and subject.
14. Write the resulting data.frame out to a txt file.

NOTE: In order to read the data back into an R data.frame called imported you
would execute the following code below.

```{r}
imported <- read.table("summarizedMotionData.txt")
```

## Sources
Data is courtesy of UCI Machine Learning Repository (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
