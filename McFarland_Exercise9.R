# Troy McFarland
# Exercise 9

# 1.) scatter plot of two variable with trendline

# read in data
poxData <- read.delim("ex9data.txt")

# make plot, set x and y axes, denote type of plot to draw, and make trendline
ggplot(data = poxData, aes(x = Epidemiology.Wk, y = Chickenpox)) + 
  geom_point() + stat_smooth(method = "lm")

# 2.) bar and scatter plot of "data.txt"

# read in data hehe
data <- read.csv("data.txt")
# make bar graph, set axes, denote type of graph and what to display (means), title graph
ggplot(data = data, aes(x = region, y = observations)) +
  stat_summary(geom="bar", fun="mean") +
  ggtitle("Mean observations per region")

# make scatter plot
ggplot(data = data, aes(x = region, y = observations)) +
  geom_point() + geom_jitter()
  ggtitle("Mean observations per region")
  
# These plots definitely tell different stories. While the means of the data are 
# conveyed in either, albeit only by interpretation in the scatter plot,
# the bar graph omits important information regarding the deviation of observations 
# from the mean. In the scatter plot, especially when jittered, we can clearly
# see the wide distribution of observations per region, as well as have enough 
# information to identify concentrated areas of observations on the graph that would
# likely be means. Most notably, in the "south" region, we can see in the scatter 
# plot that two different values are closely concentrated around, a detail that
# would be missed if only considering the bar graph. Adding error bars to the bar 
# graph could provide similar information to that which is shown in the scatter plot.
