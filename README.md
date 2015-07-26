Coursera - Getting and Cleaning Data Course Project

run.analysis.R is a script that gathers and cleans data from a wearable computing pilot from Samsung's Galaxy S smartphone, and then manipulates the data into a tidy data set. The run.analysis.R script uses "dplyr" package, so the "dplyr package will need to be installed before the script is run.

My goal for this project was to take a step by step approach to the script. Though I am certain that some of the steps could have been combined or I could have used a more effecient function to produce the same solution, I chose to make it as simple as possible.

The way this script works is:
 	1. Downloading the file from the given url and unzipping said file
	2. Extracting the needed data using the read.table() and assigning variables to the data
		a)The raw data is in multiple files so it is extracted from mutiple folders: the main folder "UCI HAR Dataset" which holds the features.txt file, which has all of the measurements desciption names. Set that as it's own variable to be used for column names.
		b)In the train and test folders are the txt files that are the subject indications files that tells which measurement is for which subject, the activity that was happening when that measurement was taken, and the actual value of that measurement.
	3. Combining all of the data for each type of data, train and test, using the cbind function - Column binding Subjects, the activity, and the measurement for the variable
	4. Combining test and train data together using the rbind() function, so now all data is in one table
	5. Inputing the column names using the function colnames(). Subject, Activity, Features(the name of all the measurements)
	6. Removed all duplicate named columns and there corresponding data using the duplicated() function and subsetting - I felt safe doing this, because the duplicated column names were not mean or standard deviation measurements
	7. Removed all columns that did not refrences mean or std(Standard Deviation) per instructions of the assignment, using the select() and contains() functions
	8. Subsituded descriptions of the activities for the numeric values that the raw data produced. This was for ease of understanding the data. The reference for which number related to the activity was in the file and was titled activity_labels.txt
	9. Renamed the columns to be more descriptive by using the gsub() function. This was for ease of understanding.
	10. Using dplyr functions group_by() and summarise_each(), I found the mean of each subject for each activity for all of the measurements that contained mean of standard deviation.

From these steps I produced a wide format tidy data set per the guidance of the project drescription.