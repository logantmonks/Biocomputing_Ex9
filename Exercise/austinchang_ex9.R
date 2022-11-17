# Exercise 9
# this script must be run in Biocomputing_Ex9 directory

library(ggplot2)

# problem 1
# the data I used indicates the number of positive COVID cases for the last 1.5 months of the Spring 2021 semester
# Each point is separated by 2 days

mydata = read.csv("mydata.csv", header=TRUE)

ggplot(mydata, aes(x=day_number, y=Number.of.Positive.Cases)) + geom_point() + geom_smooth(method=lm, se=FALSE) + xlab("Day Number") + ylab("Number of Positive Cases") + ggtitle("Notre Dame Spring 2021 COVID Cases")

# problem 2
regiondata = read.table("data.txt", header=TRUE, sep=',')

north_mean = (mean((regiondata$observations)[1:1000]))
east_mean = (mean((regiondata$observations)[1001:2000]))
south_mean = (mean((regiondata$observations)[2001:3000]))
west_mean = (mean((regiondata$observations)[3001:4000]))

means_list = c(north_mean, east_mean, south_mean, west_mean)
means_names = c("North", "East", "South", "West")
means_data = data.frame(x=means_names, y=means_list)

ggplot(data=means_data, aes(x=x, y=y)) + geom_bar(stat="identity") + xlab("Region") + ylab("Mean Population")
ggplot(data=regiondata, aes(x=region, y=observations)) + geom_jitter() + xlab("Region") + ylab("Population")

# The bar and scatter plots do tell different stories. The bar plots are all
# very similar for each region, with the mean for each region being around 15 
# observations. This would cause the viewer of the bar plot to think that each
# region had a similar number of observations during each observation period. 
# However, when you look at the scatter plot, it is clear that each region 
# had very different distributions of observations, but each just happened to
# have an average of about 15 observations per period. Some sections vary much
# more than others, especially the west, which had observations of varying all
# numbers. Meanwhile, the north had observations that were all around 15. 