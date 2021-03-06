#Using these commands to download and unzip the file

URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(URL, destfile = "./Samsungdata.zip")
unzip("./Samsungdata.zip")
library(dplyr)

#reading in the specific files and creating variables for each. This is for ease of understanding the process

train_data_act <-read.table("./UCI HAR Dataset/train/y_train.txt", stringsAsFactors = T)
train_data <- read.table("./UCI HAR Dataset/train/x_train.txt")
train_data_sub <- read.table("./UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = T)
test_data_act <-read.table("./UCI HAR Dataset/test/y_test.txt", stringsAsFactors = T)
test_data <- read.table("./UCI HAR Dataset/test/x_test.txt")
test_data_sub <- read.table("./UCI HAR Dataset/test/subject_test.txt", stringsAsFactors = T)
features <- as.character(t(read.table("./UCI HAR Dataset/features.txt",stringsAsFactors = F)[,2]))

#combing the data into larger tables to create a master file
#I am also adding in columns 
train_ex<-cbind(train_data_sub,train_data_act,train_data)
test_ex<-cbind(test_data_sub,test_data_act,test_data)
total_data<-rbind(train_ex,test_ex)
colnames(total_data)<-c("Subject","Activity", features)

#Removing duplicates so select will work properly
total_data <- total_data[ , !duplicated(colnames(total_data))]

#using select to just get the columns with mean and standard deviation in the name
total_data <- select(total_data, 1:2, contains("mean()"), contains("std()"), contains("meanFreq()"))

#renaming the activities from numbers to the actual description of the activity
total_data$Activity[total_data$Activity=="1"] <- "WALKING"
total_data$Activity[total_data$Activity=="2"] <- "WALKING_UPSTAIRS"
total_data$Activity[total_data$Activity=="3"] <- "WALKING_DOWNSTAIRS"
total_data$Activity[total_data$Activity=="4"] <- "STANDING"
total_data$Activity[total_data$Activity=="5"] <- "SITTING"
total_data$Activity[total_data$Activity=="6"] <- "LAYING"

#renaming the column for more descriptive names to help with ease of understanding

names(total_data) <- gsub("Body","", names(total_data))
names(total_data) <- gsub("tAcc","Time_Accelerometer_", names(total_data))
names(total_data) <- gsub("tGyro","Time_Gyroscope_", names(total_data))
names(total_data) <- gsub("tGravityAcc","Time_Gravity_Accelerometer_", names(total_data))
names(total_data) <- gsub("fAcc","Frequency_Accelerometer_", names(total_data))
names(total_data) <- gsub("fGyro","Frequency_Gyroscope_", names(total_data))
names(total_data) <- gsub("Mag","Magnitude_", names(total_data))
names(total_data) <- gsub("Jerk","Jerk_", names(total_data))
names(total_data) <- gsub("()","", names(total_data))
names(total_data) <- gsub("-mean","Mean", names(total_data))
names(total_data) <- gsub("-std","StandardDeviation", names(total_data))

#finding the average of the measurement by activity and subject by using dplyr command group_by and summarise
tidy_data<- total_data %>%
    group_by(Subject,Activity) %>%
    summarise_each(funs(mean))

#writing out the table so the data can be seen in txt format
write.table(tidy_data, file = "tidy_data.txt", row.name = FALSE)

#removing all of the unnecessary variables
rm(list=c("train_data_act","train_data_sub","train_data","test_data_act","test_data_sub","test_data","train_ex","test_ex","features"))