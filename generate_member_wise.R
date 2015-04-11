#!/usr/bin/r

mydata <- read.table("__data_for_R", sep="^")

png(filename="./member_wise_chart.png")
par(las=2)
par(mar=c(5,8,4,2))
barplot(sort(table(mydata$V2)),main="Member wise chart",horiz=TRUE,cex.names = 0.8,font.lab=2,xlab="Number of messages")
dev.off()
