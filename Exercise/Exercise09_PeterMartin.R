# Exercise09_PeterMartin.R

setwd("~/Desktop/Rfiles/Biocomputing/Biocomputing_Ex9/Exercise")
library(ggplot2)

#### Problem 1
# Find some data on two variables that you would expect to be related to each other. 
# These data can come from your own research, your daily life, or the internet. 
# Enter those data into a text file or Excel and then save a text file, and write a script that loads 
# this text file and produces a scatter plot of those two variables that includes a trend line.

# Data of fish body length and corresponding weight
fish_metrics <- read.table("fish_metrics.txt",header=TRUE,sep="\t",stringsAsFactors=FALSE) 

ggplot(fish_metrics, aes(x=Size,y=Weight)) +
  geom_point() +
  stat_smooth(method="lm") +
  xlab("Size (mm)") +
  ylab("Weight (g)") +
  xlim(300, 1100) +
  theme_bw()

#### Problem 2 
# Given the data in “data.txt”. Write a script that generates two figures that summarize the data. 
# First, show a bar plot of the means of the four populations. Second, show a scatter plot of all of 
# the observations. You may want to “jitter” the points (geom_jitter()) to make it easier to see all 
# of the observations within a population in your scatter plot. Alternatively, you could also try 
# setting the alpha argument in geom_scatterplot() to 0.1. Answer the following questions as a comment 
# in your R script - Do the bar and scatter plots tell you different stories? Why?

data <- read.table("data.txt",header=TRUE,sep=",",stringsAsFactors = FALSE)

ggplot(data, aes(x = region, y = observations,fill=as.factor(region))) +
  stat_summary(geom="bar",fun="mean") +
  #stat_summary(geom="errorbar",fun.data="mean_se",width=0.3) +
  ylab("Mean # of observations")+
  xlab("Region") +
  theme_bw()

############ 
## Or alternative code to the plot above
ggplot(data, aes(x = region, y = observations,fill=as.factor(region))) +
  geom_bar(stat="summary", fun="mean") +
  #geom_errorbar(stat="summary", fun.data="mean_se",width=0.3) +
  ylab("Mean # of observations")+
  xlab("Region") +
  theme_bw()
#############

ggplot(data, aes(x=region,y=observations,color=region)) +
  geom_jitter() +
  ylab("Observations")+
  xlab("Region") +
  theme_bw()

# The two graphs (the bar plot and the scatter plot) tell different stories. The bar plot only shows
# the mean of all observations for each population. Therefore, all populations seem to have about the same number of 
# observations. However, if we examine the scatter plot, we can see a very different narrative. While the north region
# seems to have all points highly concentrated around the mean of 15, the east region has a more diffuse distribution 
# about the mean, followed by the west region, the observations of which seem to be almost completely evenly distributed
# between 0 and 30. And the south region has the most divergent distribution in comparison to its mean: the true
# distribution of this population seems to have two means, one at about 25 and another at about 5. Thus, reporting
# only the means for this data set is misleading, especially for the southern population. The scatter plot shows
# that, despite initial indications from the bar plot, the populations are actually quite different from each other, and
# this exercise shows the importance of visualizing the data in multiple ways, as well as of including as many descriptive
# statistics as possible (e.g. error bars) in any plot that is created.
  