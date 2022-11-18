# Exercise 9
# Fabely Moreno

# Problem 1:

# donwload data for weight (lbs) vs height (in):

W_H_data <- read.table(file = "wei_hei_data.txt")

# load libraries:
library(ggplot2)

# Scatter plot for Weight (lbs) vs Height (in):
ggplot(data = W_H_data,
       aes(x = V1, y = V2))+
  geom_point()+
  xlab("Weight (lbs")+
  ylab("Height (in)")+
  stat_smooth(method="lm")+
  theme_classic()

# Problem 2:

# download data:
data_prob2 <- read.table(file="data.txt", header=TRUE, sep =",")


# Bar plot of the means of the four populations:

ggplot(data_prob2, mapping=aes(x=region, y=observations))+
  stat_summary(fun.data=mean_sdl, geom="bar")+
  xlab("Region")+
  ylab("Mean of observations")+
  theme_bw()

# Scatter plot of all observations:

ggplot(data_prob2, 
       aes(x=region,y=observations, color = region))+
  geom_jitter()+
  theme_bw()+
  xlab("Region")+
  ylab("Observations")

# Do the bar and scatter plots tell you different stories? Why?

# Yes, they tell different stories about the same data. The bar plot shows the mean for each region.
# The means suggest that all the regions are similar due to almost the same mean among all (~15).
# However, this does not provide more information on how the actual data is distributed by region and if there are any differences.
# On the other hand, the scatter plot provides a bigger picture on how the data is distributed by region, 
# showing significant differences among them. For example, the east and west have a more similar and dispersed set of observations,
# meanwhile, the north has a more compact distribution and the south has a divided distribution. 
# These aspects were not captured in the bar plot.
