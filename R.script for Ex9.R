#9.1 Write a  script that loads the text file you made to produce a scatterplot with a trendline.
#load package
library(ggplot2)
library(cowplot)
#read in my file from Excel
mydata<-read.csv("mydata.csv", header=TRUE, sep=",")
#make scatter plot
ggplot(mydata,aes(x=Hours.Spent.on.Homework,y=Hours.Spent.on.Phone))+
  geom_point()+
  xlab("Hours Spent on Homework per Day")+
  ylab("Hours Spent on Phone per Day")+
  stat_smooth(method="lm")+
  ggtitle("Hours Spent on Homework per Day vs. Hours Spent on Phone per Day")

#9.2 Write a script that generates two figures that summarize the data in data.txt 
#First, show barplot of the means of the four populations
data<-read.table("data.txt", header=TRUE, sep=",")
ggplot(data,aes(x=region,y=observations))+
  xlab("Region")+
  ylab("Mean Population")+
  ggtitle("Mean Populations of North,South,East,and West")+
  stat_summary(geom="bar",fun.y=mean)
  geom_bar()+
  theme_bw()
  
#Second, show a scatter plot of all the observations
ggplot(data,aes(x=region,y=observations))+
    xlab("Region") + ylab("Observations")+
    ggtitle("All Observations in Four Regions")+
    geom_jitter()+
    stat_summary(geom="point")+
    theme_bw()

#Answers to Questions
#Yes, they do tell diffeerent stories as the scatterplot gives more insight into how spread out these observations were whereas the barplot does not show this characterisitc.
#Thus, the scatterplot is in some ways more informative but the barplot is more concise in how it conveys information.
    
