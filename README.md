# get-clean-data-project
Project for Getting and Cleaning Data Course

This repo contains the necessary information for the Course Project in the Getting and Cleaning Data Coursera
Signature Track Course.

There is an R script, run_analysis.R, a Codebook, and the list of URL's where the data sets can be found.

I put a copy of the data sets on my own server.
The training files are:
 - (http://server.erinm1960.com/~erinh/UCIHAR/train/X_train.txt "Training Data Itself")
 - (http://server.erinm1960.com/~erinh/UCIHAR/train/subject_train.txt "Subject Training Data")
 - (http://server.erinm1960.com/~erinh/UCIHAR/train/y_train.txt "Activity Training Data")
 
The test files are:
- (http://server.erinm1960.com/~erinh/UCIHAR/test/X_test.txt "Test Data Itself")
- (http://server.erinm1960.com/~erinh/UCIHAR/test/subject_test.txt "Subject Test Data")
- (http://server.erinm1960.com/~erinh/UCIHAR/test/y_test.txt "Activity Training Data")

The feature data that I need is in
(http://server.erinm1960.com/~erinh/UCIHAR/features.txt)

The activity labels are found in 
(http://server.erinm1960.com/~erinh/UCIHAR/activity_labels.txt

The run_analysis.R script reads in the files, either using the `read.table` function or the `scan` function. 

I then use the `rbind` to combine the training and test data into one large file.  The activity and subject columns can merely use a typical concatenate function.

Next I use the `grepl` function to find the columns with the mean and standard deviation values.  The original record has 561 columns, and I can reduce this considerably by using `grepl`.  In this particular case, I bring 561 columns down to 66 columns.

Finally, I produce a data set which contains all of the rows, the subject ID's, the activity values, and the 66 remaining columns.  I can use the names of the columns from the indices of the `grepl` output.  This last data set is grouped by subject and activity.  The means of each of the 66 numberic columns are produced.  As a last step, I matched up the actual names of the activities to the appropriate numbers.

