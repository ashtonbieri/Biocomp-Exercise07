####
### Problem 1
### Replicates functionality of <head> function in bash

#define variable with file to return lines from
#       variable representing number of lines to be returned
#print output to terminal in R

file<-read.csv("sample.csv")
linecount<-3
print(file[,1:linecount])


### Problem 2
### load iris.csv / print last 2 rows of last 2 columns

iris<-read.csv("iris.csv",header=TRUE,stringsAsFactors = FALSE)
iriscol<-ncol(iris)
irisrow<-nrow(iris)
print(iris[(irisrow-1):irisrow,(iriscol-1):iriscol])## get number of observations for each species

## get rows with Sepal.Width > 3.5

which(iris[2]>3.5)

## write data for species <setosa> to file <setosa.csv>

write.table((iris[which(iris[5]=="setosa"),]),file="setosa.csv")


## calculate mean, min, and max of Petal.Length for virginica

virginicapetals = iris[which(iris[5]=="virginica"),3]
mean(virginicapetals)
min(virginicapetals)
max(virginicapetals)
