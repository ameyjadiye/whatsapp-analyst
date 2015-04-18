#!/usr/bin/r

library(ggplot2)
mydata <- read.csv("__data_for_R",header=FALSE)

#png(filename="./output/date_wise_chart.png")
#par(mar=c(5,8,4,2))
#betterDates <- format(as.Date(mydata$V1,"%b %d, %Y, %I:%M %p"),"%b - %Y")
#barplot(sort(table(betterDates)),main="Date wise chart",las=2,cex.names = 0.8,font.lab=2,ylab="Number of messages")
#dev.off()

df <- data.frame(time=format(as.Date(mydata$V1,"%b %d, %Y, %I:%M %p"),"%b - %Y"),user=mydata$V2,comment=mydata$V3,count=c(1:length(mydata$V1)))
ggplot(df, aes(reorder(time,table(time)[time]))) + geom_bar() + labs(title="Date wise chat messages in group", y="# of messages in group", x="Dates")

ggsave(file="./output/date_wise_chart.png")
