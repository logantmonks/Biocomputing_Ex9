#set the working directory
setwd("~/Desktop/Biocomputing /Exercises/Biocomputing_Ex9/Fernando_Exercise_9")

#Question 1
#load the data file
diamonds <- read.csv("diamonds.csv", header=TRUE, stringsAsFactors = FALSE)
# load the package 
library(ggplot2)

#plot of Year vs Mean.cumulative.mass.balance with a trend line
ggplot(data = diamonds,
       aes(x = carat , y = price, color=clarity)) +
  geom_point() +
  xlab("Diamonds Weight (Carat)") +
  ylab("Price") +
  stat_smooth(method="lm") +
  theme_classic()

#Question 2
#load the data.txt file
data <- read.table("data.txt",sep=",", header=TRUE,stringsAsFactors = FALSE)

#barplot of the means of the four populations
ggplot(data, aes(x = region,y=observations,fill=region)) +
  stat_summary(fun = mean,
               geom = "bar")+
  theme_classic() +
  xlab("Region") 
  
#scatter plot of all of the observations
  ggplot(data = data,
         aes(x = region , y = observations, color=region)) +
    geom_point() +
    geom_jitter()+
    xlab("Region") +
    ylab("Observations") +
    theme_classic() 
  
# Question-Do the bar and scatter plots tell you different stories?Why?
# Answer-Yes, 
# Because the two plots visualize two different information of the same data set
# scatter plot visualize the general idea on all of the observations within the four populations 
# while the bar plot summarize the entire data set and give information about the center of the distribution of the each population (mean)

