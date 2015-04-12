#!/usr/bin/r

mydata <- read.table("__data_for_R", sep="^")

png(filename="./output/date_wise_chart.png")
par(mar=c(5,8,4,2))
betterDates <- format(as.Date(mydata$V1,"%b %d, %Y, %I:%M %p"),"%b - %Y")
barplot(sort(table(betterDates)),main="Date wise chart",las=2,cex.names = 0.8,font.lab=2,ylab="Number of messages")
dev.off()
