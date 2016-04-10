## step 1
# read all the data
test.labels <- read.table("./data/UCI HAR Dataset/test/y_test.txt", col.names="label")
test.subjects <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names="subject")
test.data <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
train.labels <- read.table("./data/UCI HAR Dataset/train/y_train.txt", col.names="label")
train.subjects <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names="subject")
train.data <- read.table("./data/UCI HAR Dataset/train/X_train.txt")

#check the dimension of each datasets
dim(train.data)
dim(train.subjects)
dim(train.labels)

dim(test.data)
dim(test.subjects)
dim(test.labels)

#[1] 7352  561
#[1] 7352    1
#[1] 7352    1
#[1] 2947  561
#[1] 2947    1
#[1] 2947    1

# put it together in the format of: subjects, labels, everything else
#first, bind by columns for test and train 
#by putting the datasets in these order, subject, labels, data
test <- cbind(test.subjects, test.labels, test.data)
train <- cbind(train.subjects, train.labels, train.data)

#check to see if datasets were binding rightfully
dim(train)
dim(test)

#[1] 7352  563
#[1] 2947  563

#bind test and train
data <- rbind(test, train)
#second bind by row the test and train datasets created in the previous step
data <- rbind(cbind(test.subjects, test.labels, test.data),
              cbind(train.subjects, train.labels, train.data))
dim(data)
# dataset has appropriate numbers of columns 10299 and rows 563
#verify from dim of originals datasets added together
#[1] 10299   563


## step 2
# read the features
features <- read.table("./data/UCI HAR Dataset/features.txt", strip.white=TRUE, stringsAsFactors=FALSE)
# only retain features of mean and standard deviation
features.mean.std <- features[grep("mean\\(\\)|std\\(\\)", features$V2), ]

# select only the means and standard deviations from data
# increment by 2 because data has subjects and labels in the beginning
data.mean.std <- data[, c(1, 2, features.mean.std$V1+2)]

## step 3
# read the labels (activities)
labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)
# replace labels in data with label names
data.mean.std$label <- labels[data.mean.std$label, 2]

## step 4
# first make a list of the current column names and feature names
good.colnames <- c("subject", "label", features.mean.std$V2)
# remove every non-alphabetic character and converting to lowercase
good.colnames <- tolower(gsub("[^[:alpha:]]", "", good.colnames))
# then use the list as column names for data
colnames(data.mean.std) <- good.colnames

## step 5
# find the mean for each combination of subject and label
aggr.data <- aggregate(data.mean.std[, 3:ncol(data.mean.std)],
                       by=list(subject = data.mean.std$subject, 
                               label = data.mean.std$label),
                       mean)

#tidy the dataset.  Using the t() function.
# each variable forms a columns
#each obesrvation forms a row
#each type of observational unit form a table.
tidy_last <- t(aggr.data)



# write the data for course upload
write.table(format(aggr.data, scientific=T), "./data/tidy.txt",
            row.names=F, col.names=F, quote=2)

write.table(format(aggr.data, scientific=T), "./data/tidy_last.txt",
            row.names=F, col.names=F, quote=2)
