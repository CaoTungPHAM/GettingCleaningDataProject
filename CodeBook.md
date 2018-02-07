=============================================
THE SUBJECT VARIABLE (the first variable):
=============================================
It captures the subject who performed the activity for each window sample. Its range is from 1 to 30.

=============================================
THE ACTIVITY VARIABLE (the 2nd variable):
=============================================
It captures the fact that each person performed six activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

=============================================
FEATURES VARIABLES (the 3rd - 68th variables):
=============================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals 
timeAccelerometer-XYZ and timeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner 
frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity 
acceleration signals (timeBodyAccelerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass 
Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(timeBodyAccelerometerJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional 
signals were calculated using the Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, 
timeBodyAccelerometerJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally, a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerometer-XYZ, 
frequencyBodyAccelerometerJerk-XYZ, frequencyBodyGyroscope-XYZ, frequencyBodyAccelerometerJerkMagnitude, 
frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions:

timeBodyAccelerometer-XYZ
timeGravityAccelerometer-XYZ
timeBodyAccelerometerJerk-XYZ
timeBodyGyroscope-XYZ
timeBodyGyroscopeJerk-XYZ
timeBodyAccelerometerMagnitude
timeGravityAccelerometerMagnitude
timeBodyAccelerometerJerkMagnitude
timeBodyGyroscopeMagnitude
timeBodyGyroscopeJerkMagnitude
frequencyBodyAccelerometer-XYZ
frequencyBodyAccelerometerJerk-XYZ
frequencyBodyGyroscope-XYZ
frequencyBodyAccelerometerMagnitude
frequencyBodyyAccelerometerJerkMagnitude
frequencyBodyGyroscopeMagnitude
frequencyBodyGyroscopeJerkMagnitude

The set of variables that were estimated from these signals are: 
mean(): Mean value
std(): Standard deviation

Thus, the complete list of variables of each feature vector is : 
[3] "timeBodyAccelerometer-mean()-X"                
[4] "timeBodyAccelerometer-mean()-Y"                
[5] "timeBodyAccelerometer-mean()-Z"                
[6] "timeGravityAccelerometer-mean()-X"             
[7] "timeGravityAccelerometer-mean()-Y"             
[8] "timeGravityAccelerometer-mean()-Z"             
[9] "timeBodyAccelerometerJerk-mean()-X"            
[10] "timeBodyAccelerometerJerk-mean()-Y"            
[11] "timeBodyAccelerometerJerk-mean()-Z"            
[12] "timeBodyGyroscope-mean()-X"                    
[13] "timeBodyGyroscope-mean()-Y"                    
[14] "timeBodyGyroscope-mean()-Z"                    
[15] "timeBodyGyroscopeJerk-mean()-X"                
[16] "timeBodyGyroscopeJerk-mean()-Y"                
[17] "timeBodyGyroscopeJerk-mean()-Z"                
[18] "timeBodyAccelerometerMagnitude-mean()"         
[19] "timeGravityAccelerometerMagnitude-mean()"      
[20] "timeBodyAccelerometerJerkMagnitude-mean()"     
[21] "timeBodyGyroscopeMagnitude-mean()"             
[22] "timeBodyGyroscopeJerkMagnitude-mean()"         
[23] "frequencyBodyAccelerometer-mean()-X"           
[24] "frequencyBodyAccelerometer-mean()-Y"           
[25] "frequencyBodyAccelerometer-mean()-Z"           
[26] "frequencyBodyAccelerometerJerk-mean()-X"       
[27] "frequencyBodyAccelerometerJerk-mean()-Y"       
[28] "frequencyBodyAccelerometerJerk-mean()-Z"       
[29] "frequencyBodyGyroscope-mean()-X"               
[30] "frequencyBodyGyroscope-mean()-Y"               
[31] "frequencyBodyGyroscope-mean()-Z"               
[32] "frequencyBodyAccelerometerMagnitude-mean()"    
[33] "frequencyBodyAccelerometerJerkMagnitude-mean()"
[34] "frequencyBodyGyroscopeMagnitude-mean()"        
[35] "frequencyBodyGyroscopeJerkMagnitude-mean()"    
[36] "timeBodyAccelerometer-std()-X"                 
[37] "timeBodyAccelerometer-std()-Y"                 
[38] "timeBodyAccelerometer-std()-Z"                 
[39] "timeGravityAccelerometer-std()-X"              
[40] "timeGravityAccelerometer-std()-Y"              
[41] "timeGravityAccelerometer-std()-Z"              
[42] "timeBodyAccelerometerJerk-std()-X"             
[43] "timeBodyAccelerometerJerk-std()-Y"             
[44] "timeBodyAccelerometerJerk-std()-Z"             
[45] "timeBodyGyroscope-std()-X"                     
[46] "timeBodyGyroscope-std()-Y"                     
[47] "timeBodyGyroscope-std()-Z"                     
[48] "timeBodyGyroscopeJerk-std()-X"                 
[49] "timeBodyGyroscopeJerk-std()-Y"                 
[50] "timeBodyGyroscopeJerk-std()-Z"                 
[51] "timeBodyAccelerometerMagnitude-std()"          
[52] "timeGravityAccelerometerMagnitude-std()"       
[53] "timeBodyAccelerometerJerkMagnitude-std()"      
[54] "timeBodyGyroscopeMagnitude-std()"              
[55] "timeBodyGyroscopeJerkMagnitude-std()"          
[56] "frequencyBodyAccelerometer-std()-X"            
[57] "frequencyBodyAccelerometer-std()-Y"            
[58] "frequencyBodyAccelerometer-std()-Z"            
[59] "frequencyBodyAccelerometerJerk-std()-X"        
[60] "frequencyBodyAccelerometerJerk-std()-Y"        
[61] "frequencyBodyAccelerometerJerk-std()-Z"        
[62] "frequencyBodyGyroscope-std()-X"                
[63] "frequencyBodyGyroscope-std()-Y"                
[64] "frequencyBodyGyroscope-std()-Z"                
[65] "frequencyBodyAccelerometerMagnitude-std()"     
[66] "frequencyBodyAccelerometerJerkMagnitude-std()" 
[67] "frequencyBodyGyroscopeMagnitude-std()"         
[68] "frequencyBodyGyroscopeJerkMagnitude-std()"
