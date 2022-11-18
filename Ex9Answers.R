#Exercise9
#Question1
#create csv file with two variables expected to relate to one another
#using my Health tracking data I chose to plot Average steps and Average minutes of sleep
#Average steps was measured by taking the weekly average of steps per day taken
#Average minutes of sleep was measured by taking the weekly average of minutes slept each night per day
Data1<-read.table("Part1.csv", header=TRUE, sep=",")
#creating a scatterplot
ggplot(data=Data1, aes(x=WeeklyAvgSteps, y=WeeklyAvgMinSleep))+
  geom_point() + 
  xlab("Weekly Average of Daily Steps")+
  ylab("Weekly Average of Daily Sleep in Minutes")+
  #create a trendline
  stat_smooth()

#Question2
Data2<-read.table("Exercise/data.txt",header=TRUE,sep=",")
#barplot
ggplot(data=Data2, aes(x=region, y=observations))+
  geom_bar(stat="identity")+
  scale_fill_manual(aesthetics = "fill",
                   ylim)+
  xlab("Region Population")
  ylab("Average Observations")+
  theme_classic()

#scatterplot
ggplot(data=Data2, aes(x=region, y=observations))+
  geom_jitter()+
theme_classic()

#Bar graph vs. Scatterplot
#Most readers of the bar graph would conclude that all four regions had on average the same obersavations
#It gives us a succinct overall understanding of the observations if we needed one value/average associated with each region
#Most readers of the scatterplot would likely conclude that the trends in the observations found in each region are very different
#It gives us a better view into the form of the observations and how they are positioned in relation to one another 

  
