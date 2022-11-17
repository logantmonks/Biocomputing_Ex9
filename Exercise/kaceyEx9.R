#1
#set working directory correctly
setwd("~/Desktop/BCTutorials/Biocomputing_Ex9/Exercise/")
#load in data for averge gestational age and average birthweight by year from baby.txt
baby <- read.delim("babydata.txt",header = TRUE, sep = ",")
#load ggplot package
library(ggplot2)
#create scatterplot with birthw weight on x, gestational age on y with trendline
babyscatplot <- ggplot(baby, aes(x=Average.Birth.Weight..Grams., y=Average.Gestation.Age..Weeks.))+geom_point()+
  xlab("Birth Weight (g)") +
  ylab("Gestational Age (weeks)") +
  stat_smooth(method="lm") +
  theme_classic()
#display plot that was just created
babyscatplot


#2
#load in data.txt file
dataset <- read.delim("data.txt",header = TRUE, sep = ",")
#create barplot of means of four populations
barplot <- ggplot(dataset, aes(x=region, y=observations))+geom_bar(stat = "summary",position = "dodge",fun = "mean",fill="red")
#create scatterplot of all observations, jittered for ease of viewing
datascat <- ggplot(dataset, aes(x=region, y=observations))+geom_jitter(colour="red")
#display both plots
barplot
datascat


#Question: Do the bar and scatter plots tell you different stories? Why?
#Answer: Yes, they do. The barplot simply gives the mean observation for all four categories, making the data for each look similar because of their similar mean (about 15).
#On the other hand, the jittered scatterplot gives insight into the distributions of observation values that cause the mean to be around 15 for each category.
#Although the average is similar, the distributions of data are very different for each of the four categories.
#The 'west' data seems evenly distributed from 0 to 30
#The 'north' data is very concentrated around 12-18
#The 'east' data is most dense around 15 and fades as the observation values go towards zero or 30
#The 'south' data is very concentrated around 5, very sparse under 5 and in the 5-20 range, and medium density between 20-30.
#With only the barplot, we would not know that the data for each category looks very different.

