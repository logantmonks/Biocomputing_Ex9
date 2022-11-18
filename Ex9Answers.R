#Exercise9
#Question1
#create csv file with two variables expected to relate to one another
#using my Health tracking data I chose to see if there was a correlation between the number of steps I took per day and  minutes of sleep each night
#I expected a correlation as currently my top two health goals are to increase the number of steps and hours of sleep each day
#Average steps was measured by taking the weekly average of steps taken per day 
#Average minutes of sleep was measured by taking the weekly average of minutes slept each night
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
#Most readers of the bar graph would conclude that all four regions had very similar observation averages 
#It gives us a succinct overall understanding of the observations if we needed one value/average associated with each region
#However, for me it allowed me to easily and wrongly assume that the regions must have had very similar observations, not just the averages were similar

#Most readers of the scatterplot would likely conclude that the trends in the observations found in each region are very different
#It gives us a better view into the form of the observations and that even though they have similar averages, the averages were due to very different patterns of observations
#The east and north regions had observations more centralized around the average, with the north being more concentrated
#The south region had the most surprising scatterplot. The observations were concentrated on two extremes far from the average. 
#The west region had a points scattered uniformly with even density, but varied greatly from the average. 
#Overall, the scatterplot allows us to more critically evaluate the statistical results and gives us a broader perspective when interpreting the data
#The scatterplot tells us the underlying story of the results in the bar graph


  
