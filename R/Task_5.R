setwd("C:/Users/April/Documents/GEOL_590/misc/")
install.packages("http://cran.r-project.org/bin/windows/contrib/3.0/tm_0.5-10.zip",repos=NULL) #text mining
install.packages("wordcloud")#word cloud
install.packages("SnowballC")
library(tm)
library(wordcloud)
library(SnowballC)
txt<-c("C:/Users/April/Documents/GEOL_590/misc/task5/Something_interesting.txt")#puts text file in a vector
word <-Corpus (DirSource("task5"))
word <- tm_map(word, stripWhitespace)

word <- tm_map(word, tolower)

word <- tm_map(word, removeWords, stopwords("english"))

word <- tm_map(word, stemDocument)

wordcloud(word, scale=c(0.5,0.5), max.words=100, random.order=FALSE, rot.per=0.35, use.r.layout=FALSE, colors=brewer.pal(8, "Dark2"))
