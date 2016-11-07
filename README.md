# Getting and Cleaning Data Course Project

Project from the Getting and Cleaning Data course available on Coursera (November 2016).

## Instructions

The script requires the "plyr" and "dplyr" libraries.

1. Download the data through the following link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. Unzip the file in your working directory

3. Run the script "run_analysis.R" from your working directory

## Script description

The script performs the following transformations on the data (see the associated code book for further details):

1. Merge the training and the test sets to create one data set
2. Extract the measurements on the mean and standard deviation
3. Use descriptive activity names to name the activities in the data set
4. Label the data set with descriptive variable names    
5. Create an independent tidy data set with the average of each variable for each activity and each subject

## References

1. Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. "A Public Domain Dataset for Human Activity Recognition Using Smartphones." 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.
2. Hadley Wickham. "Tidy data" Under review (2014) available online at http://vita.had.co.nz/papers/tidy-data.pdf
3. David Hood. "Getting and Cleaning the Assignment" available online at https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/
