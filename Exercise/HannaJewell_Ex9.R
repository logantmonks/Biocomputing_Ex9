setwd("~/Desktop/Notre Dame/Courses S1/Biocomputing/R stuff/Biocomputing_Ex9/Exercise")
library(ggplot2)
# Part 1
data1 <- read.table("Workbook1.csv", sep=",", header = TRUE)
ggplot(data = data1,
       aes(x = Year, y = Price)) +
  geom_point(color="orchid",shape=1,size=2) + 
  xlab("Year") + ylab("Price of a McDonald's Burger (in USD)") + 
  stat_smooth(method="lm", color="black") + theme_classic()

# Part 2 
# Read in data 
data <- read.table("data.txt", sep=",", header = TRUE)
data

# Separate by population, bar graph 
ggplot(data, aes(x=region, y=observations)) + 
  stat_summary(geom="bar", fun="mean") + theme_bw() +  xlab("region") 

# Check and see what averages are because bars look suspiciously close together
north <- data[data$region=="north",]
mean(north$observations)
east <- data[data$region=="east",]
mean(east$observations)
south <- data[data$region=="south",]
mean(south$observations)
west <- data[data$region=="west",]
mean(west$observations)

# Make a scatter plot (to show each point)
ggplot(data = data, aes(x = region, y = observations)) + 
  geom_jitter(color = "orchid", shape = 1, size = 1)  +    
  stat_summary(fun.y = mean, color = "black") + xlab("region") +
  ylab("observations") + 
  theme_classic()  

# Questions:
# The scatter plots and bar plots tell different stories. This is because the 
# bar plot can only display the mean of all 1,000 observations per region,
# which ends up being very similar for each region (around 15.0). However,
# when you graph the data using a scatterplot to show each individual
# observation, it becomes clear that although the means are similar (indicated)
# by the black point on the scatterplot) the data has different distribution 
# patterns depending on region. For example, in the south, there is a group of 
# very high observations, around 30, and a group of very low observations, 
# around 5. In the north, there is only one group of observations around 15.
# So, although these two bars have similar averages, the data actually looks
# very different.

