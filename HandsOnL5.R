data.frame(rivers)

rr <-data.frame(rivers)
head(rr)

RR<- head(rr)

RG <- ggplot(RR, aes(x=rivers))

#Box Plot
d <- ggplot(rr, aes(x = "", y = rivers))
d + geom_boxplot() + xlab("")


#Histogram

h<-ggplot(rr, aes(x=rivers))
ggplot(rr, aes(x=rivers)) + geom_histogram(binwidth=200,fill="orange") + xlab("Length in miles") + ggtitle("River Lengths")
             

#Normal Distribution
ggplot(rr, aes(sample = rivers)) +ylab("Length in miles") + xlab("Amount of rivers") + ggtitle("River Length") + geom_qq(colour="blue")
                         
summary(RR$rivers)

colors()
