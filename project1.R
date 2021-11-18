
library(readr)
data=read.csv('C:/Users/ypbow/Documents/R/cars.csv')
attributes(data)
str(data)
names(data)
data$name.of.car
data$speed.of.ca
data$distance.of.car
hist(data$speed.of.car)
hist(data$distance.of.car)
plot(data$speed.of.car,data$distance.of.car)
qqnorm(data$distance.of.car)
qqnorm(data$speed.of.car)
#data$newSpeed<-as.character(data$speed.of.car)
#str(data)
#data$newSpeed2<-as.integer(data$speed.of.car)
#str(data)
names(data)<-c("name","speed","dist") 
str(data)
summary(data)
sum(is.na(data))
na.omit(data)
na.exclude(data$name)
#data$name[is.na(data$name)]<-mean(data$name,na.rm = TRUE)
#Testing and Training Sets
set.seed(123)
trainSize<-round(nrow(data)*0.7) 
testSize<-nrow(data)-trainSize
trainSize
testSize
training_indices<-sample(seq_len(nrow(data)),size =trainSize)
#creating training and testing sets
trainSet<-data[training_indices,]
testSet<-data[-training_indices,] 
#Linear Regression Models
data<-lm(dist~ speed, trainSet)
summary(data)
regression <- predict(data,testSet)
regression
plot(regression)
