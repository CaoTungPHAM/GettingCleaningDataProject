===
Human Activity Recognition Using Smartphones Dataset
===

Version by Cao-Tung PHAM

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 
we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually.  

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters 
and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a 
Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low 
frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features 
was obtained by calculating variables from the time and frequency domain. 

For each record it is provided:
- Its activity label and an identifier of the subject who carried out the experiment.
- Followed by a 66-feature vector with time and frequency domain variables, which a an aggregate value of 
the mean values and standard deviations of Triaxial acceleration from the accelerometer (total acceleration) 
and the estimated body acceleration Triaxial Angular velocity from the gyroscope, associated to each group activity-subject.

The dataset is stored in "tidy.txt" !!!!!!!

For more details on how I transfome the initial dataset into this "tidy.txt", please see "run_analysis.R".
