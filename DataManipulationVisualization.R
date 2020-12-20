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
#typically colored. The length and width of Sepal and
#Petal were measured for three species of the 
#leaf.The number of rows and columns 150 and 5 
#respectively.
summary(data_iris)
ncol(data_iris)
nrow(data_iris)


#Check For Missing Data#
#use is.na() function to check for a missing data
#is.na() will issue a boolean False statement is a
#missing value exist otherwise issue a True 
#statement.
is.na(data_iris)
sum(is.na(data_irisiris))
class(data_iris)

###################
#Data Manipulation#
###################
#This code will sum Petal width and Petal length for
#each class of species.
#From this code, it is noticeable from the output 
#that virginica has the highest number of Petal length
# with total number of 278 centimeter across all 
#observations. This is follow by versicolor 
#with total sum of Petal length and Petal width to be
#213 and 66.3 centimeters respectively.
iris_Petal <- data_iris %>% 
  select(Petal.Length, Petal.Width, Species) %>%
  group_by(Species)%>%
  summarize(Petlength_sum = sum(Petal.Length),
            petwidth_sum = sum(Petal.Width), .groups = 'drop')


#Just like what at the previous result, it also
#noticeable here that specie virginica has the sum
#of sepal length and width respectively follow by versicolor
#specie.
iris_Sepal <- data_iris %>% 
  select(Sepal.Length,Sepal.Width, Species) %>%
  group_by(Species)%>%
  summarize(Sepallength_sum = sum(Sepal.Length),
            Sepalwidth_sum = sum(Sepal.Width), .groups = 'drop')
  
  
#The following code will create a barchart as follows
#The git hub is essential for collaboration.