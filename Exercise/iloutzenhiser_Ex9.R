#### Isaac Loutzenhiser
#### Exercise 9 Intro to Biocomputing

### Set the working directory to Exercise found in Biocomputing_Ex9 folder
### Library(ggplot2)
getwd()
setwd("C:/Users/isaac/OneDrive/Documents/Biocomputing/Biocomputing_Ex9/Exercise")
library(ggplot2)

### Question 1
iris <- read.table("iris.txt", header = TRUE, sep = ",")

ggplot(data=iris, 
       aes(x=Sepal.Length, y=Sepal.Width))+
  xlab("Sepal length (mm)")+
  ylab("Sepal width (mm)")+
  geom_point()+
  stat_smooth(method="lm")+
  theme_classic()
         
       
### Question 2 
## First upload the data.txt file 
## Second set ggplot2 in the library, since this was already uploaded from the previous question, I did not upload it again


data<-read.table("data.txt", header=TRUE, sep=",")

#Bar plot
ggplot(data, aes(x=region, y=observations))+
  stat_summary(geom = "bar", fun = "mean")+
  stat_summary(fun.data = mean_se,
               geom = "errorbar",
               width = 0.1)+
  ylab("Average Observations")+
  xlab("Region")+
  coord_cartesian(ylim=c(0,20))+
  theme_classic()

#Scatter plot
ggplot(data=data,
       aes(x = region, y = observations)) +
  geom_jitter() +
  xlab("Region") +
  ylab("Observations") +
  theme_classic()

## The scatter plot and the bar graph do not tell the same story. The geom_jitter function allows us 
## us to see all of the data contained in the sample. In other words, we can see the total
## distribution of the data set more clearly. A bar graph by itself only illustrates the mean and 
## standard error bars. We are not able to see all of the data clearly, thus a different part of 
## the story is being told.

