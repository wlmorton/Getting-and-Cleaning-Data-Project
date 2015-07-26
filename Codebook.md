The Codebook

This was an exercise in reading in and manipulating data from a wearable computing pilot for the Samsung Galaxy S smartphone. The main purpose of this assignment extract of the needed data, format it, and summarize it into an tidy data set.

The tidy data set has 81 columns and 180 observation.
	
	-The 1st and 2nd columns were the Subject (the individual wearing the device), and the Activity that they were doing when the data was collected. These were factor based observations and were not actual measurements.
 	
	-Columns 3-81 are the mean of the measurements of the subject and the activity they were peforming during that time
		-The measuremets were taken by Accelerometer and gyroscope. The accelerometer was takening triaxial measurements based total acceleration and body acceleration.
		-The gyroscope was taking triaxial angular velocity measurements.
		-The measurements were taken by axis X, Y, and Z
		-The measurements were taken by time or frequency
		-Other variable such as Jerk and Magnitude indicate the type and power of the movement/measurment
		-All measurements are in the frequency measurements of Hz
		-All of the variables in this tidy data set are the mean or the standard deviation
		-Based on the measurement the variable was some combination of accerlerometer or gyroscope, the stand alone measuremeant or the mean of the frequency, time or frequency, and the mean or standard deviation.
		
		
An example of what the columns mean is Time_Accelerometer_Mean()-X would refer to the mean of the X-axis acceleration based on time. Another example would be Frequency_Accelerometer_Jerk_Magnitude_MeanFreq which would be the measurement of mean of the frequency (X,Y, and Z axes) for the acceleration's jerk's magnitude.

The MeanFreq() variables were added because they weighted mean of frequency components, which was thought to be imporant because it gives the average mean frequency for specific measurements. 


Below are the list of variables of measurements
-Time_Accelerometer_Mean X,Y,Z
-Time_Gravity_Accelerometer X,Y,Z
-Time_Accelerometer_Jerk_Mean X,Y,Z
-Time_Gyroscope_Mean X,Y,Z
-Time_Gyroscope_Jerk_Mean X,Y,Z
-Time_Accelerometer_Magnitude_Mean
-Time_Accelerometer_Jerk_Magnitude_Mean
-Time_Gyroscope_Magnitude_Mean
-Time_Gyroscope_Jerk_Magnitude_Mean

-Frequency_Accelerometer_Mean X,Y,Z
-Frequency_Gravity_Accelerometer X,Y,Z
-Frequency_Accelerometer_Jerk_Mean X,Y,Z
-Frequency_Gyroscope_Mean X,Y,Z
-Frequency_Gyroscope_Jerk_Mean X,Y,Z
-Frequency_Accelerometer_Magnitude_Mean
-Frequency_Accelerometer_Jerk_Magnitude_Mean
-Frequency_Gyroscope_Magnitude_Mean
-Frequency_Gyroscope_Jerk_Magnitude_Mean

-Time_Accelerometer_StandDeviation X,Y,Z
-Time_Accelerometer_Jerk_StandDeviation X,Y,Z
-Time_Gyroscope_StandDeviation X,Y,Z
-Time_Gyroscope_Jerk_StandDeviation X,Y,Z
-Time_Accelerometer_Magnitude_StandDeviation
-Time_Accelerometer_Jerk_Magnitude_StandDeviation
-Time_Gyroscope_Magnitude_StandDeviation
-Time_Gyroscope_Jerk_Magnitude_StandDeviation

-Frequency_Accelerometer_StandDeviation X,Y,Z
-Frequency_Accelerometer_Jerk_StandDeviation X,Y,Z
-Frequency_Gyroscope_StandDeviation X,Y,Z
-Frequency_Gyroscope_Jerk_StandDeviation X,Y,Z
-Frequency_Accelerometer_Magnitude_StandDeviation
-Frequency_Accelerometer_Jerk_Magnitude_StandDeviation
-Frequency_Gyroscope_Magnitude_StandDeviation
-Frequency_Gyroscope_Jerk_Magnitude_StandDeviation

-Frequency_Accelerometer_MeanFreq X,Y,Z
-Frequency_Accelerometer_Jerk_MeanFreq X,Y,Z
-Frequency_Gyroscope_MeanFreq X,Y,Z
-Frequency_Gyroscope_Jerk_MeanFreq X,Y,Z
-Frequency_Accelerometer_Magnitude_MeanFreq
-Frequency_Accelerometer_Jerk_Magnitude_MeanFreq
-Frequency_Gyroscope_Magnitude_MeanFreq
-Frequency_Gyroscope_Jerk_Magnitude_MeanFreq


