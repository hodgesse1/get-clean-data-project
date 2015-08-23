The README.txt file that came along with our data set was very thorough
in explaining the variables and the experimental design.

I will use the original and then describe the changes that were made.


The experiments have been carried out with a group of 30 volunteers within an a\
ge bracket of 19-48 years. Each person performed six activities (WALKING, WALKI\
NG_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphon\
e (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyro\
scope, we captured 3-axial linear acceleration and 3-axial angular velocity at \
a constant rate of 50Hz. The experiments have been video-recorded to label the \
data manually. The obtained dataset has been randomly partitioned into two sets\
, where 70% of the volunteers was selected for generating the training data and\
 30% the test data.

Note:  we combined the data into one large data set.


The sensor signals (accelerometer and gyroscope) were pre-processed by applying\
 noise filters and then sampled in fixed-width sliding windows of 2.56 sec and \
50% overlap (128 readings/window). The sensor acceleration signal, which has gr\
avitational and body motion components, was separated using a Butterworth low-p\
ass filter into body acceleration and gravity. The gravitational force is assum\
ed to have only low frequency components, therefore a filter with 0.3 Hz cutoff\
 frequency was used. From each window, a vector of features was obtained by cal\
culating variables from the time and frequency domain. See 'features_info.txt' \
for more details.


In the original records, 
- Triaxial acceleration from the accelerometer (total acceleration) and the est\
imated body acceleration.

- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.

For our purposes, we selected out the variables that were either means or 
standard deviations.  That decreased the number of numeric variables from 561
to 66.

Finally, the values themselves have been normalized.  Hence, the values fall 
between [-1, 1], and are unitless.

