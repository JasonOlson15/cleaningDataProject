---
title: "Codebook"
author: "Jason Olson"
date: "Friday, May 22, 2015"
output: html_document
---

## Data Dictionary
### Samsung Galaxy S Summarized Accelerometer Observations

### Overall Notes:
* All observations are the mean by activity (Running, walking, etc.) and subject (individual being tested).
* Summarization of data from the UCI Machine Learning Repository, Human Activity Recognition Using Smartphones Data Set.
* See README.txt for full method of summarization.
* Features values are normalized and bounded within [-1,1].
* See UCI's Data Set Description for full details regarding the original study (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


Variable Name     | Description                     | Units
------------------| ------------------------------- | ----------------
tBodyAcc.mean...X | Mean of Total Body Acceleration from Acceletometer - X axis | Standard Gravitational Units (g)
tBodyAcc.mean...Y | Mean of Total Body Acceleration from Acceletometer - Y axis | Standard Gravitational Units (g)
tBodyAcc.mean...Z | Mean of Total Body Acceleration from Acceletometer - Z axis | Standard Gravitational Units (g)
tBodyAcc.std...X | Standard Deviation of Total Body Acceleration from Acceletometer - X axis | Standard Gravitational Units (g)
tBodyAcc.std...Y | Standard Deviation of Total Body Acceleration from Acceletometer - Y axis | Standard Gravitational Units (g)
tBodyAcc.std...Z | Standard Deviation of Total Body Acceleration from Acceletometer - Z axis | Standard Gravitational Units (g)
tGravityAcc.mean...X | Mean of Total Gravity Acceleration from Acceletometer - X axis | Standard Gravitational Units (g)
tGravityAcc.mean...Y | Mean of Total Gravity Acceleration from Acceletometer - Y axis | Standard Gravitational Units (g)
tGravityAcc.mean...Z | Mean of Total Gravity Acceleration from Acceletometer - Z axis | Standard Gravitational Units (g)
tGravityAcc.std...X | Standard Deviation of Total Gravity Acceleration from Acceletometer - X axis | Standard Gravitational Units (g)
tGravityAcc.std...Y | Standard Deviation of Total Gravity Acceleration from Acceletometer - Y axis | Standard Gravitational Units (g)
tGravityAcc.std...Z | Standard Deviation of Total Gravity Acceleration from Acceletometer - Z axis | Standard Gravitational Units (g)
tBodyAccJerk.mean...X | Mean of Total Body Jerk Acceleration from Acceletometer - X axis | Standard Gravitational Units (g)
tBodyAccJerk.mean...Y | Mean of Total Body Jerk Acceleration from Acceletometer - Y axis | Standard Gravitational Units (g)
tBodyAccJerk.mean...Z | Mean of Total Body Jerk Acceleration from Acceletometer - Z axis | Standard Gravitational Units (g)
tBodyAccJerk.std...X | Standard Deviation of Total Body Jerk Acceleration from Acceletometer - X axis | Standard Gravitational Units (g)
tBodyAccJerk.std...Y | Standard Deviation of Total Body Jerk Acceleration from Acceletometer - Y axis | Standard Gravitational Units (g)
tBodyAccJerk.std...Z | Standard Deviation of Total Body Jerk Acceleration from Acceletometer - Z axis | Standard Gravitational Units (g)
tBodyGyro.mean...X | Mean of Total Body Acceleration from Gyroscope - X axis | radians/second
tBodyGyro.mean...Y | Mean of Total Body Acceleration from Gyroscope - Y axis | radians/second
tBodyGyro.mean...Z | Mean of Total Body Acceleration from Gyroscope - Z axis | radians/second
tBodyGyro.std...X | Standard Deviation of Total Body Acceleration from Gyroscope - X axis | radians/second
tBodyGyro.std...Y | Standard Deviation of Total Body Acceleration from Gyroscope - Y axis | radians/second
tBodyGyro.std...Z | Standard Deviation of Total Body Acceleration from Gyroscope - Z axis | radians/second
tBodyGyroJerk.mean...X | Mean of Total Body Jerk Acceleration from Gyroscope - X axis | radians/second
tBodyGyroJerk.mean...Y | Mean of Total Body Jerk Acceleration from Gyroscope - Y axis | radians/second
tBodyGyroJerk.mean...Z | Mean of Total Body Jerk Acceleration from Gyroscope - Z axis | radians/second
tBodyGyroJerk.std...X | Standard Deviation of Total Body Jerk Acceleration from Gyroscope - X axis | radians/second
tBodyGyroJerk.std...Y | Standard Deviation of Total Body Jerk Acceleration from Gyroscope - Y axis | radians/second
tBodyGyroJerk.std...Z | Standard Deviation of Total Body Jerk Acceleration from Gyroscope - Z axis | radians/second
tBodyAccMag.mean.. | Mean of Total Body Acceleration Magnitude from Acceletometer | Standard Gravitational Units (g)
tBodyAccMag.std.. | Standard Deviation of Total Body Acceleration Magnitude from Acceletometer | Standard Gravitational Units (g)
tGravityAccMag.mean.. | Mean of Total Gravity Acceleration Magnitude from Acceletometer | Standard Gravitational Units (g)
tGravityAccMag.std.. | Standard Deviation of Total Gravity Acceleration Magnitude from Acceletometer | Standard Gravitational Units (g)
tBodyAccJerkMag.mean.. | Mean of Total Body Jerk Acceleration Magnitude from Acceletometer | Standard Gravitational Units (g)
tBodyAccJerkMag.std.. | Standard Deviation of Total Body Jerk Acceleration Magnitude from Acceletometer | Standard Gravitational Units (g)
tBodyGyroMag.mean.. | Mean of Total Body Acceleration Magnitude from Gyroscope | radians/second
tBodyGyroMag.std.. | Standard Deviation of Total Body Acceleration Magnitude from Gyroscope | radians/second
tBodyGyroJerkMag.mean.. | Mean of Total Body Jerk Magnitude from Gyroscope | radians/second
tBodyGyroJerkMag.std.. | Standard Deviation of Total Body Jerk Magnitude from Gyroscope | radians/second
fBodyAcc.mean...X | Mean of Forward Body Acceleration from Acceletometer - X axis | Standard Gravitational Units (g)
fBodyAcc.mean...Y | Mean of Forward Body Acceleration from Acceletometer - Y axis | Standard Gravitational Units (g)
fBodyAcc.mean...Z | Mean of Forward Body Acceleration from Acceletometer - Z axis | Standard Gravitational Units (g)
fBodyAcc.std...X | Standard Deviation of Forward Body Acceleration from Acceletometer - X axis | Standard Gravitational Units (g)
fBodyAcc.std...Y | Standard Deviation of Forward Body Acceleration from Acceletometer - Y axis | Standard Gravitational Units (g)
fBodyAcc.std...Z | Standard Deviation of Forward Body Acceleration from Acceletometer - Z axis | Standard Gravitational Units (g)
fBodyAccJerk.mean...X | Mean of Forward Body Jerk from Acceletometer - X axis | Standard Gravitational Units (g)
fBodyAccJerk.mean...Y | Mean of Forward Body Jerk from Acceletometer - Y axis | Standard Gravitational Units (g)
fBodyAccJerk.mean...Z | Mean of Forward Body Jerk from Acceletometer - Z axis | Standard Gravitational Units (g)
fBodyAccJerk.std...X | Standard Deviation of Forward Body Jerk from Acceletometer - X axis | Standard Gravitational Units (g)
fBodyAccJerk.std...Y | Standard Deviation of Forward Body Jerk from Acceletometer - Y axis | Standard Gravitational Units (g)
fBodyAccJerk.std...Z | Standard Deviation of Forward Body Jerk from Acceletometer - Z axis | Standard Gravitational Units (g)
fBodyGyro.mean...X | Mean of Forward Body Acceleration from Gyroscope - X axis | radians/second
fBodyGyro.mean...Y | Mean of Forward Body Acceleration from Gyroscope - Y axis | radians/second
fBodyGyro.mean...Z | Mean of Forward Body Acceleration from Gyroscope - Z axis | radians/second
fBodyGyro.std...X | Standard Deviation of Forward Body Acceleration from Gyroscope - X axis | radians/second
fBodyGyro.std...Y | Standard Deviation of Forward Body Acceleration from Gyroscope - Y axis | radians/second
fBodyGyro.std...Z | Standard Deviation of Forward Body Acceleration from Gyroscope - Z axis | radians/second
fBodyAccMag.mean.. | Mean of Forward Body Acceleration Magnitude from Acceletometer | Standard Gravitational Units (g)
fBodyAccMag.std.. | Standard Deviation of Forward Body Acceleration Magnitude from Acceletometer | Standard Gravitational Units (g)
fBodyBodyAccJerkMag.mean.. | Mean of Forward Body Jerk Magnitude from Acceletometer | Standard Gravitational Units (g)
fBodyBodyAccJerkMag.std.. | Standard Deviation of Forward Body Jerk Magnitude from Acceletometer | Standard Gravitational Units (g)
fBodyBodyGyroMag.mean.. | Mean of Forward Body Magnitude from Gyroscope | radians/second
fBodyBodyGyroMag.std.. |  Standard Deviation of Forward Body Magnitude from Gyroscope | radians/second
fBodyBodyGyroJerkMag.mean.. | Mean of Forward Body Jerk Magnitude from Gyroscope | radians/second
fBodyBodyGyroJerkMag.std.. | Standard Deviation of Forward Body Jerk Magnitude from Gyroscope | radians/second