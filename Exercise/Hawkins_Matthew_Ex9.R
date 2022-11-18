###Hawkins_Ex_9
stepdata<- read.table("StepDataHawkins.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE) ## Read the data set that I created from my steps app on my cell phone includes the number of steps I have taken during the month of October 2022
## days are set to their order in the week 1=Sunday, 2=Monday, and so on
ggplot(data=stepdata, aes(DayOfWeek, Steps))+ ## Set x and y axis
  geom_point()+ ## set for scatter plot
  theme_classic()+ ## set theme to classic
  stat_smooth(method="lm") ## add trend line

exdata <- read.table("data.txt", header = TRUE, sep = ",") ## Read the data set from the file data.txt
ggplot(data=exdata, aes(x=region, y=observations))+ ## set x and y axis
  stat_summary(fun=mean,    ## set bar to mean
               geom= "bar", ## set the graph to a barplot
               fill="#bebebe")+ ## set color of bar to base grey color
  theme_classic() ## set theme to classic

ggplot(data=exdata, aes(x=region, y=observations, color=region))+ ## set x and y variables, also set the color of each regions data points to a different color
  geom_jitter()+ ## add individual jitters of each observation
  theme_classic()+ ## set theme to classic
  ylim(0,40) ## set y limit ceiling to 40


## The bar and scatter plots tell very different stories.
## The bar plot shares the mean as a singular point, regardless of what data is behind that point, one would never know if there is a bimodal distribution
## or any number of observations greater than one, as the data is only portrayed as one value
## The scatter plot shows all of the observations recorded, however it does not indicate what the true mean is for these individual regions. 
## Both of these plots tell valuable stories that could be used, however the combination of the two methods (barplot with jitters)  
## would be helpful for the reader to gain a better understanding of what the data is showing. 


