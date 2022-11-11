## Intro to Biocomputing Tutorial Exercise 9
## Clayton Glasgow
## 11 November 2022

# set working directory
setwd("~/Desktop/IntroBiocomputing/R/Biocomputing_Ex9/Exercise/")

## problem 1: plot two variables that you expect to be related
## selected variables: number of snowy days and average monthly temperature in South Bend
## source (snowy days): https://www.currentresults.com/Weather/Indiana/Places/south-bend-snowfall-totals-snow-accumulation-averages.php
## source (average monthly temperature): https://www.timeanddate.com/weather/usa/south-bend/climate

# load SnowByMonth.txt
SB_snow <- read.table("SnowByMonth.txt", header = TRUE, sep = ",")
# plot avg monthly temp vs. number of snowy days
ggplot(SB_snow, aes(x = Avg_monthly_temp, y = SnowDays)) +
  geom_point() +
  xlab("Average monthly temperature (degrees Fahrenheit)") +
  ylab("Average number of days per month with 0.1 inches of snowfall") +
  geom_smooth(method = "loess") +
  theme_classic() 


## problem 2: generate two figures that summarize data.txt

# load data
data <- read.table("data.txt", header = TRUE, sep = ",")

# figure 1: barplot of the means of the four populations
ggplot(data, aes(x = region, y = observations)) +
  stat_summary(fun = mean,
               geom = "bar",
               color = "red",
               fill = "black") +
  stat_summary(fun.data = mean_se,
               geom = "errorbar",
               width = 0.5,
               color = "red") +
  xlab("Region") +
  ylab("Mean observation") +
  theme_classic()

# figure 2: scatter plot of all observations
ggplot(data, aes(x = region, y = observations)) +
  geom_jitter() +
  stat_summary(fun = mean, # add mean + se to be a little more informative
               geom = "point",
               color = "red") +
  stat_summary(fun.data = mean_se,
               geom = "errorbar",
               width = 0.5,
               color = "red") +
  theme_classic()

# Do the bar and scatter plots tell different stories?
# The scatter plot tells a more detailed version of the story that the bar plot
# tells. The bar plot shows only the mean observation from each region; this can 
# be an important summary statistic, but it hides most of the data (even when error
# bars are included) - we know the mean, but nothing else. The scatter plots tells 
# a more complete story by better displaying the distribution of the data, which, 
# as seen in the graph, is different for each region. Depending on what is actually 
# being measured as the "observation", these varying distributions could have 
# significant consequences that would need to be considered. This scatter plot
# can be further enhanced by adding a point or line to show where the mean is, 
# thus showing what the bar graph shows in addition to the data distribution. 
# To use an election-related analogy in honor of this past week's midterm elections,
# the bar graph can be likened to a map of voting districts, with each district
# colored either red or blue to show which party won. While these maps show the final
# result, they do not show how close the race was. The scatter plot would then be
# a similar map, but that somehow displays the percentage of votes won by each party 
# to show the voting distribution.






