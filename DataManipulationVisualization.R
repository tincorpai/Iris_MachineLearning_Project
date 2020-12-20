####################
#Import Libraries  #
####################
library(ggplot2)
library(dplyr)
library(tidyverse)



###################
#Load the DataSet #
###################
data_iris <- iris


##################
#Data Exploration#
##################

#Get data summary#
#As we can see, Sepal.Length Sepal.Width , Petal.Length
#and Petal width are all numerical variable with
#while species is the only character or class variable.
#Furthermore, there are three classes of species: 
#setosa, versicolor and virginica each of equal length.
#The names() function return names of all features and
#these are: 
#Sepal.length, Sepal.Width, Petal.Length and 
#Petal.Width and Species. 
#A Sepal is found in flowering plants or angiosperms 
#and it is sometimes called a modified leave.
#For the Petal is each segments of the corolla of a
#flower and they are modified leaves and they are 
#typically colored.




summary(iris)

#Check For Missing Data#
#use is.na() function to check for a missing data
#is.na() will issue a boolean False statement is a
#missing value exist otherwise issue a True statement.
is.na(iris)
sum(is.na(iris))
class(iris)

###################
#Data Manipulation#
###################

