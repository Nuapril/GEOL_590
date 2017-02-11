###Script for task 04 
###Author: April Armes
###Group: IMAAS
library(ggplot2)#loads ggplot 2
diamonds # calls diamonds dataset
nrow(diamonds)#tells you how many rows diamonds dataset has -> a lot. 
set.seed(1410) #makes the results the same for everyone
dsmall <- diamonds[sample(nrow(diamonds), 100), ] #creates a vector called dsmall that only contains 100 "random" rows of diamonds
###use dsmall for all plots
ggplot(dsmall,aes (x, y, color = z)) + geom_point() + facet_wrap(~cut) #creates a scatterplot from the diamonds dataset columns x vs y colored by z facetted by cut
ggplot(dsmall, aes (price, carat, color =cut)) + geom_point()+ geom_smooth(method = "lm", se=FALSE) #creates a scaterplot from the diamonds dataset with columns x=price, y=carat, colored by cut and smoothed using the lm method - linear model/line of best fit
ggplot(dsmall, aes (carat, color= clarity)) + geom_density()+facet_wrap(~clarity)#doesn't look like the example, but a density plot of carat facetted and colored but clarity
ggplot(dsmall, aes (cut,price)) + geom_boxplot()# a box plot of the dataset diamonds with x=cut and y = price"
ggplot(dsmall, aes (x, y, color="red"))+ geom_point()+ geom_smooth(method="lm", color = "blue", linetype=2)+labs(x="x, in mm", y="y, in mm")# creates a scatterplot of x over y, designates that the points should be red, a best fit line should be blue and dashed
#now how do I print? click run



#ugly plot contest
library(jpeg)#loads jpeg library
img<-readJPEG("c:/Users/April/Documents/GEOL_590/misc/steen.jpg", native = TRUE)#pulls image from file
plot(img)
res<-dim(img)[1:2]#assigns resolution to image
plot(1,1,xlim=c(1,res[1]),ylim=c(1,res[2]),asp=1,type="n",xaxs="i",yaxs="i",xaxt="n",yaxt="n",xlab="",ylab="",bty="n")#????
rasterImage(img, 1,1,res[1],res[2])#profit

#ugly plot contest forrealdo
###load jped and grid libraries
library(jpeg)
library(grid)
library(ggplot2)
###call image
img<-readJPEG("c:/Users/April/Documents/GEOL_590/misc/steen.jpg", native = TRUE)
###place image into vector called img
img<-readJPEG("c:/Users/April/Documents/GEOL_590/misc/steen.jpg", native = TRUE)
#grab image
g <- rasterGrob(img, interpolate=TRUE)
###use diamonds dataset, set seed to make the same for everyone
set.seed(1410) #makes the results the same for everyone
dsmall <- diamonds[sample(nrow(diamonds), 100), ]
ggplot(dsmall, aes(carat, price,color="red"))+ geom_point(color="red") + theme_dark()#creates a plot on dsmall data set where the points are red and the background of the graph is grey
+theme(panel.grid.major = element_line(colour = "orange"))#makes organge gridlines on graph
+annotation_custom(g, xmin=-Inf, xmax=Inf, ymin=-Inf, ymax=Inf)#puts image into graph
+stat_identity()#need this to maintain data points and puts them on top of image
+geom_jitter()#adds random variation to the location of each data point
+geom_smooth(span =0.1, se=FALSE, color="blue", linetype=2)#smoothes plot with a blue dashed wiggly line
+ theme(plot.background = element_rect(fill = "green"))#makes the background behing the plot green
+ theme(panel.grid.minor = element_line(colour = "red", linetype = "dotted"))#creates small red dotted gridlines
+ theme(panel.grid.major = element_line(size = 2))#makes the organge gridlines thick
+ theme(legend.position = "none")#deletes legend
###You must delete all the comments for this to work properly, stops reading after first #
###see below - different image

###alt ugly plot
library(jpeg)
library(grid)
library(ggplot2)
jpg<-readJPEG("c:/Users/April/Documents/GEOL_590/misc/armes.jpg", native = TRUE)
p<-g <- rasterGrob(jpg, interpolate=TRUE)
set.seed(1410) #makes the results the same for everyone
dsmall <- diamonds[sample(nrow(diamonds), 100), ]
ggplot(dsmall, aes(carat, price,color="red"))+ geom_point(color="red") + theme_dark()+theme(panel.grid.major = element_line(colour = "orange"))+annotation_custom(p, xmin=-Inf, xmax=Inf, ymin=-Inf, ymax=Inf)+ stat_identity()+geom_jitter()+geom_smooth(span =0.1, se=FALSE, color="blue", linetype=2)+ theme(plot.background = element_rect(fill = "green"))+ theme(panel.grid.minor = element_line(colour = "red", linetype = "dotted"))+ theme(panel.grid.major = element_line(size = 2))+ theme(legend.position = "none")



