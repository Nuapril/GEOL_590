##########
#Task 7
#A. Armes
##########

## Upload packages##
##install.packages(nycflights13)
##install.packages(babynames)

## Libraries ##
library (tidyverse)
library(dplyr)
library (ggplot2)
library(nycflights)
library(babynames)

##Using the nycflights13::weather: 


## Determine whether there are any clear outliers in wind speed (wind_speed) that should be rejected. If so, filter those bad point(s) and proceed.
mean.sd.wind_speed <- nycflights13::weather %>%
  select(wind_speed)%>%
  summarise (mean.wind_speed=mean(wind_speed, na.rm=TRUE), sd.wind_speed=2*sd(wind_speed, na.rm = TRUE))

wind.speed <- nycflights13::weather %>%
 select(wind_speed)%>%
  filter(wind_speed < mean.sd.wind_speed$mean.wind_speed +mean.sd.wind_speed$sd.wind_speed| wind_speed > mean.sd.wind_speed$mean.wind_speed +mean.sd.wind_speed$sd.wind_speed)

####################### 
  

## What direction has the highest median speed at each airport? Make a table and a plot of median wind speed by direction, for each airport. Optional fun challenge: If you like, this is a rare opportunity to make use of coord_polar().

median.wind_speed <- nycflights13::weather%>% 
  group_by(wind_dir, origin) %>%
  select (wind_dir, origin, wind_speed) %>%
  filter(wind_speed < mean.sd.wind_speed$mean.wind_speed +mean.sd.wind_speed$sd.wind_speed| wind_speed > mean.sd.wind_speed$mean.wind_speed +mean.sd.wind_speed$sd.wind_speed) %>%
  summarise((med.wind_speed = median(wind_speed, na.rm = TRUE)))%>%
  arrange (origin)

#plot not working idk why 
median.wind_speed %>% 
  ggplot(aes(x=wind_dir,y=med.wind_speed))+
  #Error in eval(expr, envir, enclos) : object 'med.wind_speed' not found
  geom_point()+
  facet_wrap(~origin)+
  labs(x= "Wind Direction", y= "Wind Speed (mph)")

############################

#Using nycflights13::flights and nycflights13::airlines:
#Make a table with two columns: airline name (not carrier code) and median distance flown from JFK airport. The table should be arranged in order of decreasing mean flight distance. 
airline.flights <- full_join(nycflights13::airlines, nycflights13::flights)
  
  
JFK.med.dis<- airline.flights %>%
  group_by(name, origin)%>%
  select(distance)%>%
  filter(origin == "JFK") %>%
  summarise(median.distance = median(distance, na.rm = TRUE)) %>%
  arrange(desc(median.distance))

#########################  

#Make a wide-format data frame that displays the number of flights that leave Newark ("EWR") airport each month, from each airline
EWR.flights <-airline.flights %>%
  group_by (origin)%>%
  filter(origin == "EWR") %>%
  select (name, flight, month) %>%
  group_by(month, name)%>%
  
  # want to use mutate function but couldn't figure out how
  #mutate(airline.flights, x = flights/month)
  #Error in mutate_impl(.data, dots):impossible to replicate vector of size 20
  
  tally(flights)%>%
  spread(key = month, value = n)
#Error in summarise_impl(.data, dots) : object 'flights' not found 
## I don't understand this error message, I'm not using summarise! AHHH!

#####################

#Using the babynames dataset:

#Identify the ten most common male and female names in 2014. 
common.babynames2014 <- babynames::babynames %>%
  filter(year == 2014)%>%
  group_by(sex)%>%
  top_n(10,n)

#Make a plot of their frequency (prop) since 1880
pop.names <- common.babynames2014 %>%
  select (name) 

freq.plot <- semi_join (babynames::babynames, pop.names)%>%
  ggplot(aes (x= year, y= prop, colour = name))+
  geom_point()+
  facet_wrap(~sex)
print(freq.plot)

#################

#Write task that involves some of the functions on the Data Wrangling Cheat Sheet and execute it.

qPCR <- read.csv('C:\Users\April\Documents\Research\data_analysis\qpcr.csv') #need to make relavtive path
#Error: '\U' used without hex digits in character string starting "'C:\U"
qPCR_summ <- group_by(qPCR, Rep) %>%
  summarise(mean.NQR = mean(NQR, na.rm = TRUE), stdev.NQR = sd(NQR, na.rm = TRUE))

print(qPCR_summ)
