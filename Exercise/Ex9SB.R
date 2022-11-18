#Exercise 9

#Part 1: Scatter Plot
# I created a scatter plot from height & weight data from 20 people from a dataset I found online
library(ggplot2)

htWt <- read.csv("HW.csv", header = T)
htWt

#create scatter plot with trendline & labels
ggplot(data=htWt, aes(x=Height, y=Weight)) + 
  geom_point(color = "purple") + geom_smooth(method=lm, se=FALSE) + labs(x="Height (in)", y= "Weight (lbs)")


#Part 2: Two Summary Figures

#load in data
data <-read.csv("data.txt")

#barplot of means of populations
ggplot(data=data, aes(fill=region, x=region, y=observations)) + 
  geom_bar(position = "dodge", stat = "summary", fun = "mean")

#scatterplot of all observations
ggplot(data=data, aes(x=region, y=observations)) + 
  geom_jitter()

#Do the plots tell different stories??
'The bar and scatter plots tell very different stories with the same data. 
The bar plot makes the data of the different regions appear very similar, 
as the mean of each region is close to 15. However, when you see the distribution
of all of the data points in the scatter plot, you can see that the observations 
in each region are actually quite different. The east and west observations are quite
widespread between the values of 0 and 30. THe north values are all quite condensed between 13-17ish.
The south values are quite interesting because there are clumps of values around 5 and 25.
The difference between these data sets demonstrates the importance of using the appropriate type of plot for
your data, as well as using multiple representations, as important differences can be easily overlooked
or data can be incorrectly interpreted if the wrong type is chosen.'
  