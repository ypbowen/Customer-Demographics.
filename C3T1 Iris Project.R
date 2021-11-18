
#Iris Data
install.packages("readr")
library(readr)
IrisDataset=read.csv('C:/Users/ypbow/Documents/iris.csv')
attributes(IrisDataset)
summary(IrisDataset) 
str(IrisDataset)
names(IrisDataset)
hist(IrisDataset$Species)
hist(IrisDataset$Sepal.Length)
plot(IrisDataset$Sepal.Length, IrisDataset$Sepal.Width)
qqnorm(IrisDataset$Sepal.Length)     
IrisDataset$Species<-as.numeric(IrisDataset$Species) 
str(IrisDataset)
set.seed(123)
trainSize <- round(nrow(IrisDataset) * 0.7)
testSize <- nrow(IrisDataset)-trainSize
trainSize
testSize
trainSet <- IrisDataset[training_indices, ]
testSet <- IrisDataset[-training_indices, ]
#set.seed(405)
#trainSet <- IrisDataset[training_indices, ]
#testSet <- IrisDataset[-training_indices, ]
LinearModel<- lm(Petal.Width ~ Petal.Length, trainSet)
summary(LinearModel)
prediction<-predict(LinearModel,testSet)
# we are predicting petal width using petal length as independent
prediction
regression
plot(regression)
