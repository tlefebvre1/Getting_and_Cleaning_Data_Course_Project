# Getting and Cleaning Data Course Project

## Raw data source

Data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The zip file containing all the data can be obtained through the following link:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Data transformation

Running the script "run_analysis.R" on the raw data will produce a tidy data set which will be printed in the file cleaned_data.txt  

## Description of the tidy data set

The data set stored in the file cleaned_data.txt contains 180 obervations and 68 variables. 

1. "Subject"
2. "Activity"
3. "Time.BodyAcceleration.Mean.X"
4. "Time.BodyAcceleration.Mean.Y"
5. "Time.BodyAcceleration.Mean.Z"
6. "Time.BodyAcceleration.StandardDeviation.X"
7. "Time.BodyAcceleration.StandardDeviation.Y"
8. "Time.BodyAcceleration.StandardDeviation.Z"
9. "Time.GravityAcceleration.Mean.X"
10. "Time.GravityAcceleration.Mean.Y"
11. "Time.GravityAcceleration.Mean.Z"
12. "Time.GravityAcceleration.StandardDeviation.X"
13. "Time.GravityAcceleration.StandardDeviation.Y"
14. "Time.GravityAcceleration.StandardDeviation.Z"
15. "Time.BodyAccelerationJerk.Mean.X"
16. "Time.BodyAccelerationJerk.Mean.Y"
17. "Time.BodyAccelerationJerk.Mean.Z"
18. "Time.BodyAccelerationJerk.StandardDeviation.X"
19. "Time.BodyAccelerationJerk.StandardDeviation.Y"
20. "Time.BodyAccelerationJerk.StandardDeviation.Z"
21. "Time.BodyAngularSpeed.Mean.X"
22. "Time.BodyAngularSpeed.Mean.Y"
23. "Time.BodyAngularSpeed.Mean.Z"
24. "Time.BodyAngularSpeed.StandardDeviation.X"
25. "Time.BodyAngularSpeed.StandardDeviation.Y"
26. "Time.BodyAngularSpeed.StandardDeviation.Z"
27. "Time.BodyJerk.Mean.X"
28. "Time.BodyJerk.Mean.Y"
29. "Time.BodyJerk.Mean.Z"
30. "Time.BodyJerk.StandardDeviation.X"
31. "Time.BodyJerk.StandardDeviation.Y"
32. "Time.BodyJerk.StandardDeviation.Z"
33. "Time.BodyAccelerationMagnitude.Mean"
34. "Time.BodyAccelerationMagnitude.StandardDeviation"
35. "Time.GravityAccelerationMagnitude.Mean"
36. "Time.GravityAccelerationMagnitude.StandardDeviation"
37. "Time.BodyAccelerationJerkMagnitude.Mean"
38. "Time.BodyAccelerationJerkMagnitude.StandardDeviation"
39. "Time.BodyAngularSpeedMagnitude.Mean"
40. "Time.BodyAngularSpeedMagnitude.StandardDeviation"
41. "Time.BodyJerkMagnitude.Mean"
42. "Time.BodyJerkMagnitude.StandardDeviation"
43. "Frequency.BodyAcceleration.Mean.X"
44. "Frequency.BodyAcceleration.Mean.Y"
45. "Frequency.BodyAcceleration.Mean.Z"
46. "Frequency.BodyAcceleration.StandardDeviation.X"
47. "Frequency.BodyAcceleration.StandardDeviation.Y"
48. "Frequency.BodyAcceleration.StandardDeviation.Z"
49. "Frequency.BodyAccelerationJerk.Mean.X"
50. "Frequency.BodyAccelerationJerk.Mean.Y"
51. "Frequency.BodyAccelerationJerk.Mean.Z"
52. "Frequency.BodyAccelerationJerk.StandardDeviation.X"
53. "Frequency.BodyAccelerationJerk.StandardDeviation.Y"
54. "Frequency.BodyAccelerationJerk.StandardDeviation.Z"
55. "Frequency.BodyAngularSpeed.Mean.X"
56. "Frequency.BodyAngularSpeed.Mean.Y"
57. "Frequency.BodyAngularSpeed.Mean.Z"
58. "Frequency.BodyAngularSpeed.StandardDeviation.X"
59. "Frequency.BodyAngularSpeed.StandardDeviation.Y"
60. "Frequency.BodyAngularSpeed.StandardDeviation.Z"
61. "Frequency.BodyAccelerationMagnitude.Mean"
62. "Frequency.BodyAccelerationMagnitude.StandardDeviation"
63. "Frequency.BodyAccelerationJerkMagnitude.Mean"
64. "Frequency.BodyAccelerationJerkMagnitude.StandardDeviation"
65. "Frequency.BodyAngularSpeedMagnitude.Mean"
66. "Frequency.BodyAngularSpeedMagnitude.StandardDeviation"
67. "Frequency.BodyJerkMagnitude.Mean"
68. "Frequency.BodyJerkMagnitude.StandardDeviation"

## References

1. Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. "A Public Domain Dataset for Human Activity Recognition Using Smartphones." 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.
2. Hadley Wickham. "Tidy data" Under review (2014) available online at http://vita.had.co.nz/papers/tidy-data.pdf
3. David Hood. "Getting and Cleaning the Assignment" available online at https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/
