loadData <- function () {
        ## Load the required libraries
        print("Loading required libraries...")
        library(data.table)
        library(dplyr)
        
        ## Read in X_test.txt and Y_test.txt data sets
        print("Reading in test observations...")
        x_test <- read.table("test/X_test.txt")
        y_test <- read.table("test/Y_test.txt")
        subject_test <- read.table("test/subject_test.txt")
        x_train <- read.table("train/X_train.txt")
        y_train <- read.table("train/Y_train.txt")
        subject_train <- read.table("train/subject_train.txt")
                
        ## Append the data from "Y" files to the "X" files
        print("Appending activity and subject details to observations...")
        x_test[,562] <- y_test[,1]
        x_train[,562] <- y_train[,1]
        
        ## Append the subject files to the X files
        x_test[,563] <- subject_test[,1]
        x_train[,563] <- subject_train[,1]
        
        ## Merge together data sets
        print("Merging data sets...")
        mergedX = merge(x_test, x_train, all=TRUE)
        
        ## Read in features.txt and then set column names based on the data
        print("Removing unnecessary features and adjusting column names...")
        features <- read.table("features.txt")
        colnames(mergedX) <- features[,"V2"]
        colnames(mergedX)[562] <- "ActivityID"
        colnames(mergedX)[563] <- "SubjectID"
        
        ## Remove unnecessary columns and adjust sort order
        mergedX.f <- mergedX[,c(563,1:6,41:46,81:86,121:126,161:166,201:202,
                                214:215,227:228,240:241,253:254,266:271,
                                345:350,424:429,503:504,516:517,529:530,
                                542:543,562)]
        
        ## Read the activity labels and adjust the column names
        activity_labels <- read.table("activity_labels.txt")
        colnames(activity_labels)[1] <- "ActivityID"
        colnames(activity_labels)[2] <- "ActivityName"

        ## Convert to data tables, merge together the two data sets
        mergedX.dt <- data.table(mergedX.f)
        activity_labels.dt <- data.table(activity_labels)
        setkey(mergedX.dt, ActivityID) 
        setkey(activity_labels.dt, ActivityID)
        fullyMerged <- merge(mergedX.dt, activity_labels.dt)
        
        ## Convert to data frame and drop the ActivityID column
        fullyMerged <- data.frame(fullyMerged)
        fullyMerged <- fullyMerged[,c(69,2:68)]

        ## Create data set that averages each variable by activity/subject
        print("Generating final summarized data set and creating output file...")
        finalRaw <- group_by(fullyMerged,ActivityName,SubjectID)               
        finalAverage <- finalRaw %>% group_by(ActivityName, SubjectID) %>% summarise_each(funs(mean))
        
        ## Write data sets to file
        write.table(finalAverage,file="summarizedMotionData.txt", row.names=TRUE)
}
