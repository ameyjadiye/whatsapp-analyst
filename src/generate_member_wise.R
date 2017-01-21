#!/usr/bin/R
library(ggplot2)
mydata <- read.csv("__data_for_R",header=FALSE)

#png(filename="./output/member_wise_chart.png")
#par(las=2)
#par(mar=c(5,8,4,2))
#barplot(sort(table(mydata$V2)),main="Member wise chart",horiz=TRUE,cex.names = 0.8,font.lab=2,xlab="Number of messages")
#dev.off()
df <- data.frame(time=mydata$V1,user=mydata$V2,comment=mydata$V3,count=c(1:length(mydata$V1)))
ggplot(df, aes(reorder(user,table(user)[user]))) + geom_bar() + coord_flip() + labs(title="Member wise chat messages in group", y="# of messages in group", x="Group Members")
ggsave(file="./output/member_wise_chart.png")
