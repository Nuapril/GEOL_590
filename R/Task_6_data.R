#################
# Accomplishes task 6
#################

## Packages needed for this script

library(dplyr) # package that manipulates dataframes
library(ggplot2)

## read data in relative path

motility <- read.csv("data/motility4.csv") # reads motility data into a vector called motility


motility_summ <- group_by(motility, Sample) %>% #takes exisiting table (motility in this case) and converts it into a grouped table where operations are performed by "group" (Sample)
  ## %>% denontes that Sample will be on the left 
  summarise(mean.d = mean(cm, na.rm=TRUE), sd.d=sd(cm, na.rm=TRUE)) # the data that is summarised. Put the mean of the diameter (cm) in a vector called mean.d and the standard deviation into a vector called sd.d
## na.rm = TRUE means not to calculate NAs 



## Now we want to know if there's a significant difference in the mean diameter amongst our samples so run one way anova

fit <- aov(cm~Sample, data = motility)
summary(fit) # prints anova table
print(model.tables(fit, "means"), digits = 3) # prints table of sample means

## There's a signicant difference, now to find out between which samples

sig<- TukeyHSD( x = fit, conf.level = 0.95) # Tukey HSD with a 95% confidence level. 
plot(sig)
print(sig)

## plot means of samples with error bars representing standard deviation
label.df <-data.frame (Sample = c( "pgaR::TN5"), mean.d = c(2.25))

p<-ggplot(data=motility_summ, aes (x = Sample, y = mean.d))+ geom_bar(stat="identity", position = "dodge")+ geom_errorbar(aes(ymax = mean.d+sd.d, ymin = mean.d-sd.d), width = 0.45)  #bar plot with error bars using data summary with sample averages and standard devations. 


## add lines and * to indicate significant differences between samples ##

p2<-p + geom_text(data = label.df, label = "***") #adds astricks above pgaR from label.df

p3<-p2


## adjust gridlines 
p4<-p3+ theme_bw()+ theme(plot.background = element_blank(), panel.grid.major.x = element_blank(), panel.grid.minor.x= element_blank()) 

## rename x and y axis and add chart title 
p4 + ggtitle("Motility, 48 hrs") + theme(plot.title = element_text(hjust = 0.5)) + ylab("Swim diameter in cm") + xlab("Mutant")


