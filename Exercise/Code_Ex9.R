# Enter data to a text file and then save the text file, and write
# a script that loads this text file and produces a scatter plot of
#those two variables that includes a trend line
Data_Problem1 <- read.csv("Data_Problem1.txt")
Year = Data_Problem1$Year
iPhoneUsers = Data_Problem1$Number.of.iPhone.users
plot(x=Year, y=iPhoneUsers,
     xlab="Year", ylab="iPhoner Users (millions)", xlim=c(2008, 2019),
     ylim=c(11,950),
     main="Years vs iPhone Users")
abline(lm(iPhoneUsers ~ Year))

# Make a bar plot of data.txt of the means of the four populations
data <- read.csv("data.txt")
north_append=0
south_append=0
east_append=0
west_append=0
for(row in 1:4000){
  if(data[row,1]=="north"){
    north_append=north_append + data[row, 2]
  }
  else if(data[row, 1]=="south"){
    south_append = south_append + data[row, 2]
  }
  else if(data[row, 1]=="east"){
    east_append = east_append + data[row, 2]
  }
  else if(data[row, 1]=="west"){
    west_append = west_append + data[row, 2]
  }
}
north_mean = north_append / 1000
south_mean = south_append / 1000
west_mean = west_append / 1000
east_mean = east_append / 1000
region.mean <- c(north_mean, south_mean, west_mean, east_mean)
barplot(region.mean, names.arg = c("North", "South" , "West" , "East"),
        ylim=c(0,18),
        main="Region vs Observation Mean", 
        xlab="Region",
        ylab="Observation",
        col="darkred")
# Scatter plot of all the observations of data.txt
library(ggplot2)
ggplot(data, aes(x=region, y=observations)) + geom_jitter(width=0.2, height=0.2) #+ geom_point(aes(colour=x))
#Trying to add color but it is not working
