library(plyr)
library(dplyr)

################################################################################
# Merges the training and the test sets to create one data set

# Read data source files
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# Merge all data sets
X_data <- bind_rows(X_test, X_train)
subject_data <- bind_rows(subject_test, subject_train)
y_data <- bind_rows(y_test, y_train)
names(subject_data) <- "Subject"
names(y_data) <- "ActivityId"
names(X_data) <- features$V2
full_data <- bind_cols(X_data, subject_data, y_data)

################################################################################
# Extracts only the measurements on the mean and standard deviation 
# for each measurement

all_cols <- as.factor(names(full_data))
selected_cols <- grepl("(mean|std)\\(\\)", all_cols)
new_cols <- all_cols %in% c("Subject", "ActivityId")
required_cols <- (selected_cols | new_cols)
required_data <- full_data[required_cols]

################################################################################
# Uses descriptive activity names to name the activities in the data set

activity_col <- factor(required_data$ActivityId, labels = activity_labels$V2)
required_data <- mutate(required_data, Activity = activity_col)
required_data <- select(required_data, -ActivityId)

################################################################################
# Appropriately labels the data set with descriptive variable names

# Remove parentheses
names(required_data) <- gsub("\\(|\\)", "", names(required_data), perl = TRUE)

# Make syntactically valid names
names(required_data) <- make.names(names(required_data))

# Set clearer names
names(required_data) <- gsub("^t", "Time.", names(required_data))
names(required_data) <- gsub("^f", "Frequency.", names(required_data))
names(required_data) <- gsub("Freq\\.", "Frequency.", names(required_data))
names(required_data) <- gsub("Freq$", "Frequency", names(required_data))
names(required_data) <- gsub("BodyBody", "Body", names(required_data))
names(required_data) <- gsub("Acc", "Acceleration", names(required_data))
names(required_data) <- gsub("GyroJerk", "Jerk", names(required_data))
names(required_data) <- gsub("Gyro", "AngularSpeed", names(required_data))
names(required_data) <- gsub("Mag", "Magnitude", names(required_data))
names(required_data) <- gsub("\\.mean", ".Mean", names(required_data))
names(required_data) <- gsub("\\.std", ".StandardDeviation", names(required_data))

################################################################################
# From the previous data set, creates a second, independent tidy data set with 
# the average of each variable for each activity and each subject

cleaned_data = ddply(required_data, c("Subject", "Activity"), numcolwise(mean))

# Print the clean data set
write.table(cleaned_data, file = "cleaned_data.txt", row.names = FALSE)
