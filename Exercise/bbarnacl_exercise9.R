# Brandon Barnacle
# Exercise 9

# need to load in ggplot
library(ggplot2)

# Problem 1
# load in found data, which is the temperature vs ice cream sales
ice_cream<-read.table("prob1.txt", header=TRUE, sep=",")

ggplot(data=ice_cream,aes(x=temp, y=sales)) + geom_point() +
    xlab("Temperature (celcius)") +
    ylab("Ice Cream Sales ($)") +
    stat_smooth(method="lm") +
    ggtitle("Temperature(celcius) vs Ice Cream Sales($)")

# Problem 2
data<-read.table("data.txt", header=TRUE, sep=",")

ggplot(data=data, aes(x=region, y=observations)) +
    stat_summary(geom="bar", fun.y=mean) +
    xlab("Region") + 
    ylab("Mean Population") +
    ggtitle("Mean Population of Four Regions")

ggplot(data=data, aes(x=region, y=observations)) + geom_jitter() +
    xlab("Region") +
    ylab("Population") +
    ggtitle("Population for each observation in the regions")

# Do the figures tell the same stories?
# I think the bar graph and the scatter plot tell different stories.
# If you just look at the bar graph, you would think that all of the 
# observations for each region were about the same, or at least that is a 
# conclusion you could make. However, once you look at the scatter plot
# you see that each region had a very different distribution of population
# and that they all just averaged out to be around the same. For example, by
# looking at the bar graph you would think that all the regions would have
# populations around 15, but then looking at the scatter plot you can see 
# how it varies so much. The nort is all around 15, but then the south has
# no value around 15, but either much above or below.
    