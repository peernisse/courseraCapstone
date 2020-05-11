#THis is the data setup script for the capstone project

library(tidyverse)
library(data.table)

#Import data sets--------------------

#path<-'https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip'

#Download the zip file
#download.file(path,destfile = './data/capstoneData.zip')

#Read in data from the text files
#The english twitter file
twit<-file('./data/final/en_US/en_US.twitter.txt')
tdatL<-readLines(twit) %>% length()#Get number of lines
tdat<-readLines(twit) %>% as.data.frame()
names(tdat)<-'LINES'
tdat$LINES<-as.character(tdat$LINES)

#The english blog file
blg<-file('./data/final/en_US/en_US.blogs.txt')
tdatL<-readLines(blg) %>% length()#Get number of lines
bdat<-readLines(blg) %>% as.data.frame()
names(bdat)<-'LINES'
bdat$LINES<-as.character(bdat$LINES)

#The english news file
nws<-file('./data/final/en_US/en_US.news.txt')
tdatL<-readLines(nws) %>% length()#Get number of lines
ndat<-readLines(nws) %>% as.data.frame()
names(ndat)<-'LINES'
ndat$LINES<-as.character(ndat$LINES)


luv<-filter(tdat,grepl('love',tdat$LINES)==TRUE) %>% nrow(.)
hate<-filter(tdat,grepl('hate',tdat$LINES)==TRUE) %>% nrow(.)

luv/hate

kb<-filter(tdat,grepl('A computer once beat me at chess, but it was no match for me at kickboxing',
                      tdat$LINES)==TRUE) %>% nrow(.)


