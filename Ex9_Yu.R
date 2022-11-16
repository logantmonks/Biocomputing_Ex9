#Load in tree data text file
setwd("/Users/zhuoranyu/Biocomputing_Ex9")
trees <-read.table("trees.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE)
#check data
head(trees)

#load packages
library(ggplot2)

#produces a scatter plot of those two variables that includes a trend line.
ggplot(data=trees,aes(x=dbh,y=height)) + geom_point()+
  xlab("Tree DBH (cm)") +
  ylab("Tree Height (m)")+theme_bw() +
  stat_smooth(method="lm")

#load in data.txt
setwd("/Users/zhuoranyu/Biocomputing_Ex9/Exercise")
data <- read.table("data.txt", header=TRUE, sep=",", stringsAsFactors=FALSE)
#check data
head(data)
#Write a script that generates two figures that sumamrize the data. First, show
#a barplot of the means of the four populations. 
ggplot(data, aes(x = region, y = observations)) +
  stat_summary(fun.y = mean,
               geom = "bar") +
  theme_bw() +
  theme(axis.text.x = element_text(angle=65, vjust=0.6))+
  xlab("Region") +
  ylab("Mean Population")

#Second, show a scatter plot of all of the observations. You may
#want to “jitter” the points (geom_jitter()) to make it 
#easier to see all of the observations within a population
#in your scatter plot. Alternatively, you could also try 
#setting the alpha argument in geom_scatterplot()
#to 0.1. Answer the following questions as a comment in your R script - 
#Do the bar and scatter plots tell you different stories? Why?

ggplot(data, aes(x = region, y = observations,color = as.factor(region))) +
  geom_jitter()+
  theme_bw() +
  xlab("Region") +
  ylab("Population")+
  theme(legend.title=element_blank())

#The two plots tell different stories. From the bar plot, we can see that the mean
#of each region is really close to each other, therefore, when we use the bar plot
#to graph, there is no big difference between each region. However, when we used the
#scatter plot using geom_jitter, which allowed us to see the observations clearly,
#the distribution in each region is really different. The east has a good amount of
#observations are distributed somewhat evenly between 10-20 with some observations within 
#0-10 and 20-30. The north has the least amount of observations and they are all distributed
#close to 15. The south has almost no observation near 15 but there are a lot of observation
#from 20-30 and also lots of low observation close to 5 to balance the high observation and make the 
#mean near 15. Lastly, the west has the greatest amount of observation with even 
#distribution from 0-30, which makes the mean close to 15 too. In conclusion, although
#the means for each region are all around 15, the observarions are distributed very differently
#in each region. 
