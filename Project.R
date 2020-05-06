data <- read.csv("ecology.csv")
ovx <- subset(data, data$Treat=="OVX")
sham<- subset(data, data$Treat=="SHAM")
par( mfrow= c(1,3))
hist(ovx$SVL2)
boxplot(ovx$SVL2)
qqnorm(ovx$SVL2)
summary(ovx$SVL2)
44.75- 1.5* (46-44.75)
46+ 1.5* (46-44.75)
sd(ovx$SVL2, na.rm=TRUE)
pt(5.72, 120, lower.tail=FALSE)*2
sd(ovx$SVL2)


