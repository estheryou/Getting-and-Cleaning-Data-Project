setwd("./Desktop/cleandata/UCI HAR Dataset/")
###merge dataset
#metadata
activity<-read.table("activity_labels.txt",header = F)
features<-read.table("features.txt",header=F)
#train&test
subjecttrain<-read.table("./train/subject_train.txt",header=F)
activitytrain<-read.table("./train/y_train.txt",header = F)
featuretrain<-read.table("./train/X_train.txt",header=F)


subjecttest<-read.table("./test/subject_test.txt",header=F)
activitytest<-read.table("./test/y_test.txt",header = F)
featuretest<-read.table("./test/X_test.txt",header=F)

train<-cbind(featuretrain,activitytrain,subjecttrain)
test<-cbind(featuretest,activitytest,subjecttest)
colnames(train) <- c(t(features[2]),"Activity","Subject")
colnames(test)<-c(t(features[2]),"Activity","Subject")
dim(test)

#combine the 2 datasets
data<-rbind(test,train)
library(memisc)

###Extracts only the measurements on the 
###mean and standard deviation for each measurement.
part<-grep(".*[Mm]ean.*|.*[Ss]td.*",names(data))
partition<-c(part,562,563)
data2<-data[,partition]
dim(data2)

###Uses descriptive activity names 
###to name the activities in the data set
number<-dim(data)[1]
data2$Activity<-as.character(data2$Activity)
for (i in 1:6){
 data2$Activity[data2$Activity==6]<-as.character(activity[i,2])
}
data2$Activity <- as.factor(data2$Activity)
class(data2$Activity)


###Appropriately labels the data set with descriptive variable names.
names(data2)
names(data2)<-gsub("Acc", "Accelerometer", names(data2))
names(data2)<-gsub("Gyro", "Gyroscope", names(data2))
names(data2)<-gsub("BodyBody", "Body", names(data2))
names(data2)<-gsub("Mag", "Magnitude", names(data2))
names(data2)<-gsub("^t", "Time", names(data2))
names(data2)<-gsub("^f", "Freq", names(data2))
names(data2)<-gsub("tBody", "TimeBody", names(data2))
names(data2)<-gsub("-mean()", "Mean", names(data2), ignore.case = TRUE)
names(data2)<-gsub("-std()", "STD", names(data2), ignore.case = TRUE)
names(data2)<-gsub("-freq()", "Freq", names(data2), ignore.case = TRUE)
names(data2)<-gsub("angle", "Angle", names(data2))
names(data2)<-gsub("gravity", "Gravity", names(data2))
names(data2)<-gsub("[-()]","",names(data2))

###From the data set in step 4, creates a second, 
###independent tidy data set with the average of 
###each variable for each activity and each subject.
library(plyr)
data3<-aggregate(. ~Subject + Activity, data2, mean)
data3<-data3[order(data3$Subject,data3$Activity),]
dim(data3)
write.table(data3, file = "tidydata.txt",row.name=FALSE)


