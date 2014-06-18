#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download.file(fileUrl,"UCI HAR Dataset.zip")

#dateDownloaded <- date()
#dateDownloaded
#library(utils)
#fileUrl <- "UCI HAR Dataset.zip"
#unzip(fileUrl)

basedir <- "UCI HAR Dataset"

fileUrl <- paste(basedir,"activity_labels.txt",sep="/")
activity.labels <- read.csv(fileUrl,sep=" ",header=FALSE)

fileUrl <- paste(basedir,"features.txt",sep="/")
feature.names <- read.csv(fileUrl,sep=" ",header=FALSE)

mean.cols <- grep("mean()", feature.names[,2], fixed=TRUE,value=FALSE)
std.cols <- grep("std()", feature.names[,2], fixed=TRUE,value=FALSE)
keep.cols <- c(mean.cols,std.cols)

col.widths = widths=rep.int(16,561)

basedir <- "UCI HAR Dataset/test"

fileUrl <- paste(basedir,"X_test.txt",sep="/")
test.features <- read.fwf(fileUrl, col.widths,header = FALSE, strip.white=TRUE, buffersize=100)
test.features <- test.features[,keep.cols]

fileUrl <- fileUrl <- paste(basedir,"y_test.txt",sep="/")
test.activities <- read.csv(fileUrl,sep=" ",header=FALSE)

fileUrl <- fileUrl <- paste(basedir,"subject_test.txt",sep="/")
test.subjects <- read.csv(fileUrl,sep=" ",header=FALSE)

test.data <- cbind(test.subjects,test.activities,test.features)

basedir <- "UCI HAR Dataset/train"

fileUrl <- paste(basedir,"X_train.txt",sep="/")
train.features <- read.fwf(fileUrl, col.widths,header = FALSE, strip.white=TRUE, buffersize=100)
train.features <- train.features[,keep.cols]

fileUrl <- paste(basedir,"y_train.txt",sep="/")
train.activities <- read.csv(fileUrl,sep=" ",header=FALSE)

fileUrl <- paste(basedir,"subject_train.txt",sep="/")
train.subjects <- read.csv(fileUrl,sep=" ",header=FALSE)

train.data <- cbind(test.subjects,test.activities,test.features)

combined.data <- rbind(test.data, train.data)

col.names <- c("Subject","Activity",as.character(fn <- feature.names[keep.cols,2]))

colnames(combined.data) <- col.names

aggdata <-aggregate(combined.data, by=list(combined.data$Activity,combined.data$Subject), FUN=mean, na.rm=TRUE)
aggdata <- aggdata[,c(-3,-4)]
colnames(aggdata) <- paste(colnames(aggdata),"-avg",sep="")
colnames(aggdata)[1] = "Activity"
colnames(aggdata)[2] = "Subject"
aggdata$Activity <- factor(aggdata$Activity, labels = activity.labels[,2])

#Assign readable names to the Activity Column
combined.data$Activity <- factor(combined.data$Activity, labels = activity.labels[,2])

write.csv(aggdata,"UCI HAR Dataset Aggregate.csv",row.names=FALSE)

