#HandsOnL7

library(reshape2)
library(ggplot2)
nhtemp
View(nhtemp)

#Compare first 25 years to Last 25 years
first25 <- nhtemp[1:25]
last25 <- nhtemp[36:60]

first25
nH25<- t.test(first25, last25, paired = TRUE)
nH25
.0006383*100
#Less than 5%
#So the there is a significant difference

summary(first25)
summary(last25)

#Graphing
F25 <- data.frame(first25)
L25 <- data.frame(last25)

temps <- melt(nhtemp, measure.vars = c("First", "Last"))

nht <- ggplot(F25, aes(x= first25,fill="#69b3a2"))
nht + geom_histogram(binwidth=1) +xlab("Temperatures First 25 Years")+ ylab("Recordings")

nht <- ggplot(L25, aes(x= last25, color="sepal"))
nht + geom_histogram(binwidth=1) +xlab("Temperatures Last 25 Years")+ ylab("Recordings")
