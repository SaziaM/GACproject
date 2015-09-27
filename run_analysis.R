Train<-read.table("Dataset/train/X_train.txt")
Train.label<-read.table("Dataset/train/y_train.txt")
Test<-read.table("Dataset/test/X_test.txt")
Test.label<-read.table("Dataset/test/y_test.txt")
Train.subject<-read.table("Dataset/train/subject_train.txt")
Test.subject<-read.table("Dataset/test/subject_test.txt")
activity<-read.table("Dataset/activity_labels.txt")
feature<-read.table("Dataset/features.txt")

#Adding Descriptive Activity names to Test Data
for(i in 1:2947)
{
temp<-Test.label[i,1]
Test[i,562]<-as.character(activity[temp,2])
}

#Adding Descriptive Activity names to Train Data
for(i in 1:7352)
{
temp<-Train.label[i,1]
Train[i,562]<-as.character(activity[temp,2])
}

#Adding Subject information to Test Data
for(i in 1:2947)
Test[i,563]<-Test.subject[i,1]

#Adding Subject information to Train Data
for(i in 1:7352)
Train[i,563]<-Train.subject[i,1]


#Creating Descriptive variable names for the data

final.names<-data.frame()
for(i in 1:561)
{
final.names[1,i]<-as.character(feature[i,2])
}
final.names[1,562]<-"Activity"
final.names[1,563]<-"Subject"

#Adding Descriptive variable names to the data

names(Train)<-final.names[names(Train)]
names(Test)<-final.names[names(Test)]

#Merging Train and test data with activity label, subject and variable names

Final<-rbind(Train,Test) 


#Determining the variable indices for mean and standard deviation measurements
Mean.data<-grep("mean",names(Final),value=FALSE)
Std.data<-grep("std",names(Final),value=FALSE)
Data<-c(Mean.data,Std.data)
Data<-sort(Data)
Data<-c(Data,562,563)

#Extracting mean and standard deviation measurements from the merged data

Final<-subset(Final,select=Data)

#Creating Tidy data set with the average of each variable for each activity and each subject

Result<-aggregate(Final[,1:79],list(Activity=Final$Activity,Subject=Final$Subject),mean)

#Writing the result in a text file

write.table(Result,"Result.txt",row.names=FALSE)




