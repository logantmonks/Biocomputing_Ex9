# ex9.R: A script to create a series of plots as assigned by Exercise 9

# Assuming you are in "Exercise" dir of "Biocomputing_Ex9" 

# 1: Make a scatter plot based on internet data
# first select the file to be read
age_weight <- read.csv("age_weight.csv")
# load ggplot2
library(ggplot2)
#make plot
#Agemos is the age of months (the data is from babies), M is the weight
ggplot(data <- age_weight, aes(x = Agemos, y = M)) + geom_point() + stat_smooth(method="lm")

library("ggplot2")
library("cowplot")
# 2: Make two plots from the data.csv file
# first select the file to be read
data <-read.table("data.txt")
# make a bar plot
ggplot(data, aes(fill="region", x="region", y="observations")) + 
  geom_bar(stat ="summary", fun = "mean")

#make a scatter plot
ggplot(data, aes(x="region", y="obersvations")) + geom_jitter()

#Q: Yes, the bar plot makes it seem like the averages are comparable across regions while, when the data is shown in a scatter plot, you can see the observsations are not equally distributed within the regions. Some regions are more variable in their observations while others show the data as more clustered.

