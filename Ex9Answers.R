#Exercise9
#create csv file with two variables expected to relate to one another
#using my Health tracking data I chose to plot Average steps and Average minutes of sleep
#Average steps was measured by taking the weekly average of steps per day taken
#Average minutes of sleep was measured by taking the weekly average of minutes slept each night per day
Data1<-read.table("Part1.csv", header=TRUE, sep=",")
#creating a scatterplot
ggplot(data=Data1, aes(x=WeeklyAvgSteps, y=WeeklyAvgMinSleep))+
  geom_point() + 
  #create a trendline
  stat_smooth()

