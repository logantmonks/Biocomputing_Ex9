#Exercise-9 Biocomputing Tutorial - Patrick Bahk 

#Part 1: 
#Find data on two variables that relate:
#I chose time and CO2 emissions UnitedStates annual as my two variables 
#File downloaded off the internet called co-emission-per-capita.csv
#write a script that loads the textfile and produces a scatter plot with a TREND LINE

library(ggplot2)
library(cowplot)

co_emissions <- read.csv("annual-co2-emissions-per-country.csv", header=T)
US_co_emissions <- co_emissions[co_emissions$Entity == "United States",]

dim(US_co_emissions)
head(US_co_emissions)

#plot of time (years) vs United States Annual CO2 Emissions (tonnes)
ggplot(data = US_co_emissions,
       aes(x = Year, y = Annual.CO2.emissions)) +
  geom_point(color="red", size=0.5) +
  geom_smooth(se=F, color='black', linewidth=0.5) +
  #geom_smooth(method=lm, se=F, color='black', linewidth=0.5) + #trendline
  xlab("Time (Year)") +
  ylab("CO2 Emissions (tonnes)") +
  #scale_y_continuous(limits=c(1,7),
  #breaks=1:7) +
  theme_classic()

#Part 2
#write a script that generates two figures:
#bar plot of the means of the four populations 
#scatter plot of all the observations 

data <- read.table(file="data.txt", header=T, sep=",")
dim(data)
head(data)
north <- data[data$region == "north",]
east <- data[data$region == "east",]
south <- data[data$region == "south",]
west <- data[data$region == "west",]

mean_north <- mean(north[,2])
mean_east <- mean(east[,2])
mean_south <- mean(south[,2])
mean_west <- mean(west[,2])

ggplot(data=data, aes(x = region, y = observations))+
  stat_summary(geom="bar", fun.y=mean)+
  xlab("Region")+
  ylab("Mean population")

ggplot(data=data, aes(x=region, y=observations)) +
         geom_jitter() +
         xlab("Region") +
         ylab("Population") 

#the bar graph and scatter plot tell very different stories. At first when observing the resuls
#from the bar graph the mean observations look very similar among all regions however
#when viewing the scatter plot there are clearly a lot of differences in the distribution of
#population. The means of the observations are close to 15 however when looking at the scatter plot
#the north data is very much more condensed compared to the west or east. 
         
         






