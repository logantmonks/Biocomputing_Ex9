# Exercise 9
# hjeon
setwd("/Users/hyesooclarejeon/Desktop/Biocomputing_Ex9/Exercise")
install.packages("ggplot2")
install.packages("cowplot")
install.packages("fivethirtyeight")

library(ggplot2)
library(cowplot)

# Question 1
library(fivethirtyeight)

## save fifa_audience dataset to separate csv file
write.table(x=fifa_audience, file="fifa_audience.csv")

## read into fifa_audience_data that we'd plot with
fifa_audience_data <- read.csv("fifa_audience.csv", header = TRUE, stringsAsFactors = FALSE, sep=" ")


ggplot(fifa_audience_data, aes(x = country, y = population_share)) +
  geom_smooth(method="lm") +
  stat_summary(fun.y = mean,
               geom = "point") +
  theme_bw() +
  theme(axis.text.x = element_text(angle=65, vjust=0.6))


# Question 2
q2_data <- read.table("data.txt", header = TRUE, stringsAsFactors = FALSE, sep=",")

## barplot of means of four regions
ggplot(q2_data, aes(x = region, y = observations)) +
  stat_summary(fun.y = mean,
               geom = "bar") +
  theme_bw() +
  xlab("region") +
  ylab("mean observations") +
  theme(axis.text.x = element_text(angle=65, vjust=0.6))

## scatterplot of all observations
ggplot(q2_data, aes(x = region, y = observations)) +
  geom_jitter()

## Answer to, Do the bar and scatter plots tell you different stories? Why?
## Yes they tell different stories, because while bar graph might be prone to change due to the nature of means
## since outliers can easily affect the stat, the scatter plot shows how strong the distribution is and notice
## any possible outlying observations that changes the mean for each region

