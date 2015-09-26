a<-read.table("Dataset/train/X_train.txt")
b<-read.table("Dataset/train/y_train.txt")
c<-read.table("Dataset/test/X_test.txt")
d<-read.table("Dataset/test/y_test.txt")
st1<-read.table("Dataset/train/subject_train.txt")
st2<-read.table("Dataset/test/subject_test.txt")
act<-read.table("Dataset/activity_labels.txt")
feat<-read.table("Dataset/features.txt")

for(i in 1:2947)
{
t<-d[i,1]
c[i,562]<-as.character(act[t,2])
}

for(i in 1:7352)
{
t<-b[i,1]
a[i,562]<-as.character(act[t,2])
}


for(i in 1:2947)
c[i,563]<-st2[i,1]

for(i in 1:7352)
a[i,563]<-st1[i,1]

f<-data.frame()
for(i in 1:561)
{
f[1,i]<-as.character(feat[i,2])
}
f[1,562]<-"Activity"
f[1,563]<-"Subject"

names(a)<-f[names(a)]
names(c)<-f[names(c)]

#Train and test data with activity label and subject
Data<-rbind(a,c) 
library(dplyr)
Final<-tbl_df(Data)
w<-grep("mean",names(Final),value=FALSE)
z<-grep("std",names(Final),value=FALSE)
x<-c(w,z)
x<-sort(x)
x<-c(x,562,563)
Final<-subset(Final,select=x)

Result<-aggregate(Final[,1:79],list(Activity=Final$Activity,Subject=Final$Subject),mean)

write.table(Result,"Result.txt",row.names=FALSE)




