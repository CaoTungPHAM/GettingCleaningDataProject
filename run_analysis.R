### Download the file as a temporary file
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
temp <- tempfile()
download.file(fileUrl,destfile=temp,method="libcurl",mode="wb")

### Unzip this temporary file in a folder named "Project"
if(!file.exists("./Project")){dir.create("./Project")}
unzip(zipfile=temp,exdir="./Project")
path <- file.path("./Project" , "UCI HAR Dataset")
files <- list.files(path,recursive=TRUE)
### The above "files" contains all the file paths in "UCI HAR Dataset"

### Variables names for features are stored in features.txt, values for features are stored 
### in X_train.txt and X_test.txt. We merge these data in a data frame named "features".
### We then give names to variables of "features" using the file "features.txt"
features_Test  <- read.table(file.path(path, "test" , "X_test.txt" ),header = FALSE)
features_Train  <- read.table(file.path(path, "train" , "X_train.txt" ),header = FALSE)
features <- rbind(features_Train,features_Test)
features_Names <- read.table(file.path(path,"features.txt"),header=FALSE,stringsAsFactors = FALSE)
names(features)=features_Names$V2


### Values for Y are stored in Y_train.txt and Y_test.txt. 
### We then merge these data in a data frame named "Y". In fact, it must be named "Activity".
Y_Test  <- read.table(file.path(path, "test" , "Y_test.txt" ),header = FALSE)
Y_Train  <- read.table(file.path(path, "train" , "Y_train.txt" ),header = FALSE)
Y <- rbind(Y_Train,Y_Test)
names(Y)="Activity"

### Values for thes subjects are stored in subject_train.txt and subject_test.txt. 
### We then merge these data in a data frame named "subject", and name it "Subject".
subject_Test <- read.table(file.path(path,"test","subject_test.txt"),header=FALSE)
subject_Train <- read.table(file.path(path,"train","subject_train.txt"),header=FALSE)
subject <- rbind(subject_Train,subject_Test)
names(subject)="Subject"


### Step 1: Merging the training and the test sets to create one data set, called "df"
df <- cbind(subject,Y)
df <- cbind(df,features)


### Step 2: Extracts only the measurements on the mean and standard deviation for 
### each measurement. Stores them in a data frame called "Sub".
features_Names_mean <- features_Names[grepl("mean\\(\\)",features_Names$V2),]$V2
features_Names_std <- features_Names[grepl("std\\(\\)",features_Names$V2),]$V2
subNames <- c(features_Names_mean,features_Names_std)
Sub <- subset(df,select=c("Subject","Activity",subNames))


### Step 3: Uses descriptive activity names to name the activities in the data set
ActivityLabels <- read.table(file.path(path, "activity_labels.txt"),header = FALSE)
rep_func <- function(x){activityLabels$V2[x]}
Sub$Activity <- sapply(Sub$Activity,rep_func)
### Notes that we can check that activity values are well factors by using "head(Sub$Activity)"


### Step 4: Appropriately labels the data set with descriptive variable names
old_new <- data.frame(old=c("^t","^f","Acc","Gyro","Mag","BodyBody"),
          new=c("time","frequency","Accelerometer","Gyroscope","Magnitude","Body"))
for (i in 1:dim(old_new)[1]) {names(Sub) <- gsub(old_new[i,1],old_new[i,2],names(Sub))}

### Step 5: With the average of each variable for each activity and each subject 
### based on the data set in step 4, we create a tidy data and output it as "tidy.txt"

### Before doing anything, we check 
table(Sub$Subject,Sub$Activity)
### which shows that the tidy data must contain 180 rows corresponding to each subject-activity.


if (!require("plyr")) {
  install.packages("plyr")
}
require(plyr)

tidy_df<-aggregate(. ~Subject + Activity, Sub, mean)
tidy_df<-tidy_df[order(tidy_df$Subject,tidy_df$Activity),]
write.table(tidy_df, file = "tidy.txt",row.name=FALSE)