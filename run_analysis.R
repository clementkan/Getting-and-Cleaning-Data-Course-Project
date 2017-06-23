# run_analysis.R - R script for Getting-and-Cleaning-Data-Course-Project

# Clement Kan
# 16 Jun 2017 

##########################################################################################
# R package required
##########################################################################################
# Function to check if the required package is installed.
is.installed <- function(mypkg) is.element(mypkg, installed.packages()[,1]) 
if(!is.installed("plyr")){install.packages("plyr")}

# Load the plyr package.
library(plyr)


##########################################################################################
# Data collection
##########################################################################################
# Create a directory called `data` to contain the file we're going to download.
dir.create("./data")

# Download the file from the web. The downloaded file will be called `dataset.zip`.
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "./data/dataset.zip", method = "curl") # Mac user specify method = "curl".

# Open the compressed file.
unzip(zipfile = "./data/dataset.zip", exdir = "./data")

# Construct a path to the `UCI HAR Dataset` directory.
path <- file.path("./data", "UCI HAR Dataset")


##########################################################################################
# Load the data sets into the R.
##########################################################################################
# Read the Data Features files.
dataFeaturesTrain <- read.table(file = file.path(path, "train", "X_train.txt"), header = FALSE)
dataFeaturesTest <- read.table(file = file.path(path, "test", "X_test.txt"), header = FALSE)

# Read the Subject ID files.
dataSubjectTrain <- read.table(file = file.path(path, "train", "subject_train.txt"), header = FALSE)
dataSubjectTest <- read.table(file = file.path(path, "test", "subject_test.txt"), header = FALSE)

# Read the Activity files.
dataActivityTrain <- read.table(file = file.path(path, "train", "y_train.txt"), header = FALSE)
dataActivityTest <- read.table(file = file.path(path, "test", "y_test.txt"), header = FALSE)


##########################################################################################
# Merge the training and the test sets to create one data set.
##########################################################################################
# Merge the training data set.
dataTrain <- cbind(dataFeaturesTrain, dataSubjectTrain, dataActivityTrain)

# Merge the test data set.
dataTest <- cbind(dataFeaturesTest, dataSubjectTest, dataActivityTest)

# Merge the training and test data sets together.
dataCombine <- rbind(dataTrain, dataTest)


##########################################################################################
# Extracts only the measurements on the mean and standard deviation for each measurement.
##########################################################################################
# Assign column names to the data frame.
featuresNames <- read.table(file = file.path(path, "features.txt"))
names(dataCombine) <- c(as.character(featuresNames[,2]), "Subject", "Activity")

# Subsetting the data frame, to extract only those features on mean and standard deviation.
dataSubset <- grep("\\bmean\\b|\\bstd\\b", names(dataCombine), value = TRUE)
data <- subset(dataCombine, select = c(dataSubset, "Subject", "Activity"))


##########################################################################################
# Use descriptive activity names to name the activities in the data set.
##########################################################################################
# Read the activity labels file.
activity_labels <- read.table(file = file.path(path, "activity_labels.txt"))

# Add labels to the value for the Activity variable.                              
data$Activity <- factor(data$Activity, levels = c(1, 2, 3, 4, 5, 6),
                        labels = activity_labels[, 2])


##########################################################################################
# Appropriately labels the data set with descriptive variable names.
##########################################################################################
names(data) <- gsub("^t", "Time", names(data))
names(data) <- gsub("^f", "Frequency", names(data))
names(data) <- gsub("Acc", "Accelerometer", names(data))
names(data) <- gsub("Gyro", "Gyroscope", names(data))
names(data) <- gsub("Mag", "Magnitude", names(data))
names(data) <- gsub("BodyBody", "Body", names(data))
names(data) <- gsub("-mean\\(\\)", "Mean", names(data))
names(data) <- gsub("-std\\(\\)", "StdDev", names(data))


##########################################################################################
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
##########################################################################################
# Aggregate the "data" data frame by Subject and Activity, returning the means for the Features variables.
data2 <- aggregate(. ~Subject + Activity, data, mean)
data2 <- data2[order(data2$Subject,data2$Activity),]

# Export the tidy data set.
write.table(data2, file = "tidy_dataset.txt", row.names = FALSE)
