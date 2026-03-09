#install.packages("pryr")
require(pryr)
require(ISLR)
require(boot)
#install.packages("plyr")
library(data.table)
library(plyr)

x <- read.table("C:/Users/derek/Downloads/Assignment 6 Dataset.txt", header = TRUE, sep = ",")

y <- ddply(x,"Sex",transform,Grade.Average=mean(Grade))


write.table(y, "Sorted_Average.csv", sep=",")

filter4_i <- subset(x,grepl("[iI]",x$Name))

write.table(filter4_i, "DataSubset.csv", sep=",")

