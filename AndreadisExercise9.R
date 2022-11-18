## Biocomputing - Exercise 9
## Early Days of R 
## 15 November 2022 - Catherine Andreadis 

#-------------------------------------------------------------------------------

#Set working directory

setwd("/Users/catherineandreadis/Desktop/biocomputing/Exercise_9/Biocomputing_Ex9")
getwd()
list.files()

#Load packages 
library(dplyr)
library(tidyverse)
library(ggplot2)


##1. Find some data on two variables that you would expect to be related to each 
## other. These data can come from your own research, your daily life, or the 
## internet. Enter those data into a text file or Excel and then save a text file
## and write a script that loads this text file and produces a scatter plot of those 
## two variables that includes a trendline. 


# Load in dataset. This dataset, philornis, came from a project looking at how 
# the growth/survival rate of nestling birds was affected by anti-parasitic treatment
# of their nests. 

philornis <- read.csv("philornis_for_catherine.csv", header = TRUE, sep = ",")

head(philornis)

#I will make a scatterplot that shows the relationship between fledgling mass 
# and tarsus length by treatment group. 
ggplot(philornis, aes(x=mass, y=tarsus, color = treatment))+
  geom_point()+
  xlab("mass (g)")+
  ylab("tarsus length (mm)")+
  geom_smooth(method=lm)+
  theme_bw()


##2. Given the data in "data.txt" write a script that generates two figures that 
## summarize the data. 

##a. Show a barplot of the means of the four populations

setwd("/Users/catherineandreadis/Desktop/biocomputing/Exercise_9/Biocomputing_Ex9/Exercise")
data <- read.table("data.txt", sep =",", header = TRUE)

ggplot(data, aes(x=region, y=observations, fill = region))+
  stat_summary(geom = "bar", fun.y = "mean")+
  xlab("region")+
  ylab("observations")+
  theme_bw()

##b. Make a scatterplot of all observations, jitter the points to be able to see 
## your data better

ggplot(data, aes(x=region, y=observations, color = region))+
  geom_jitter()+
  xlab("region")+
  ylab("observations")+
  theme_bw()


##Question: Do the bar and scatter plots tell you different stories? Why? 

### Answer: The bar and scatter plots do illustrate different stories because they
### present different elements of the dataset. The bar plot 
### directly shows the mean number of observations for each of the populations, while 
### the scatter plot shows the overall distribution of the data for each region. 
### However, by looking at the distribution of the data by region in the scatterplot
### one can visualize where the mean falls, which is evident in the bar plot. 

