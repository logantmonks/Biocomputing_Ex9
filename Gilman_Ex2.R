#Question 1

#set working directory
setwd("~/Desktop/biocomputing")

rain <- read.delim("rain.txt", header = FALSE)


# add a linear trendline with a new layer
ggplot(data = rain,
       aes(x = V1, y = V2)) +
  geom_point() +
  xlab("Rainfall (inches)") +
  ylab("Number of Plants") +
  stat_smooth(method="lm") +
  theme_classic()


#Question 2

data <- read.csv("~/Desktop/biocomputing/Biocomputing_Ex9/Exercise/data.txt", header = TRUE)

#Make bar plot
ggplot(data, aes(region, observations)) +
  geom_bar(position = "dodge",
           stat = "summary",
           fun = "mean")

#add axes labels
ggplot(data, aes(region, observations)) +
  geom_bar(position = "dodge",
           stat = "summary",
           fun = "mean") +
  xlab("Regions") +
  ylab("Mean Observations")


#add bar colors
ggplot(data, aes(x=region,y=observations,fill=region)) +
  geom_bar(position = "dodge",
           stat = "summary",
           fun = "mean") +
  xlab("Regions") +
  ylab("Mean Observations")

#Make scatterplot
ggplot(data = data) +
  aes(x = region, y = observations) +
  geom_jitter()

#add colors
ggplot(data, aes(x=region,y=observations,col=region)) +
  aes(x = region, y = observations) +
  geom_jitter()

# Yes, I would say the bar and scatter plots do tell different stories. The bar plot does not show much difference between the regions, only that they all have very similar mean observations. 
# The scatter plot on the other hand shows a little bit more about the distribution of the observations. It shows the range of observations, and suggests to the differences in standard deviations of the regional observations.
