setwd("/Code/dojo/bootcamp-master/Datasets")

titanic<-read.csv("titanic.csv")
titanic$AgeMissing <-FALSE

missing.age <- is.na(titanic$Age)
titanic[missing.age, "AgeMissing"] <- TRUE

AgeMedian <- median(titanic$Age, na.rm=TRUE)
titanic[missing.age, "Age"] <- AgeMedian