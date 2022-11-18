# Hugh Smith Ex9
# 11/17/22

# question 1- weight vs height data
weight_height = read.csv("~/biocomputing/Biocomputing_Ex9/Exercise/weight_height.csv")
ggplot(weight_height, aes(x=Weight, y=Height)) +
  geom_point() +
  stat_smooth(method="lm")

# question 2
# barplot
data = read.table("~/biocomputing/Biocomputing_Ex9/Exercise/data.txt", header=TRUE, sep = ",", stringsAsFactors = FALSE)
ggplot(data, aes(x=region, y=observations)) +
  stat_summary(geom="bar", fun="mean") +
  stat_summary(geom="errorbar", fun.data = "mean_se", width = .3)

# scatter/jitterplot
ggplot(data, aes(x=region, y=observations)) +
  geom_jitter()

# Do the bar and scatter plots tell you different stories? Why?
# Yes, they do. The bar plot shows all of the regions havinng extremely similar
# means. It seems like all of the regions have the same tendencies. However,
# when we look at the scatterplot of each region (espcially when jittered),
# we see a different story- east has a lot of variation in its points, with a 
# few outliers on either end. North is very condensed around 15 observations.
# South has two distinct groups- one around 5 observations and the other around 
# 25. Finally west is the most random of them all, nearly evenly distributed at
# every number of observations.