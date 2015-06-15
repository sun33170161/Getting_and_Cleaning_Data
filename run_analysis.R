file.url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
file.local <- "data/FUCI_HAR_Dataset.zip"
if(!dir.exists("data"))
  dir.create("data")
download.file(file.url, file.local, method = "curl")
unzip(file.local, exdir = "data")

# 1. Merges the training and the test sets to create one data set.
train <- read.table("data/UCI HAR Dataset/train/X_train.txt", header = F)
dim(train)
test <- read.table("data/UCI HAR Dataset/test/X_test.txt", header = F)
dim(test)
data <- rbind(train, test)
dim(data)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- read.table("data/UCI HAR Dataset/features.txt")
head(features)
meanAndStdFeatures <- features[grep("mean\\(\\)|std\\(\\)", features[, 2]), ]
data.filtered <- data[, meanAndStdFeatures[, 1]]
dim(data.filtered)

# 3. Uses descriptive activity names to name the activities in the data set
activity_labels <- read.table("data/UCI HAR Dataset/activity_labels.txt")
activities <- rbind(read.table("data/UCI HAR Dataset/train/y_train.txt"),
                         read.table("data/UCI HAR Dataset/test/y_test.txt"))
dim(activities)
activities.name <- as.vector(sapply(activities, function(x){activity_labels[x, 2]}))

# 4. Appropriately labels the data set with descriptive variable names. 
names(data.filtered) <- meanAndStdFeatures[, 2]
names(data.filtered)

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
subjects <- rbind(read.table("data/UCI HAR Dataset/train/subject_train.txt"),
                  read.table("data/UCI HAR Dataset/test/subject_test.txt"))
dim(subjects)
data.mean <- apply(data.filtered, 2, function(x){ tapply(x, c(activities, subjects), mean) })
dim(data.mean)

# save the tidy data
write.table(data.mean, "data/UCI HAR Dataset/data_tidy.txt", row.names = F)
