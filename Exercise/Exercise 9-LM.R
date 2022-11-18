#Liv Maracina - Ex 9

#Q1- Molecular weight vs Distance in gel (mm)
MW_distance = read.csv("~/Biocomputing_Ex7/Biocomputing_Ex9/Exercise/biodata1.csv")
ggplot(MW_distance, aes(x=Distance, y=Molecular Weight)) +
  geom_point() +
  stat_smooth(method = "lm")

#Q2
#This will represent the barplot
data = read.table("data.txt", header = TRUE, sep = ",", stringsAsFactors = FALSE)
ggplot(data, aes(x=region, y=observations)) +
  stat_summary(geom="bar", fun="mean") +
  stat_summary(geom="errorbar", fun.data = "mean_se", width = .3)

#This will present scatterplot
ggplot(data, aes(x=region, y=observations)) +
  geom_jitter()

#Do the bar and scatter plot show different stories?
# Both graohs do tell different stroes-- The bar graph demonstrates that each region has very similar means
# and all relatively similar; however, the scatter plot shows the variance among each region especially when jittered. 
# There is a lot of variation in the East with few outliers, the North is rather condensed with ~15 observations, the South 
# has two clear groups-- a group of 5 observations and a group of 15 observations, and the West had almost an even distribution
# at every number of observations.


