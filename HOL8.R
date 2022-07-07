#Lesson 8 Hands On
mtcars

library(ggplot2)

#Horsepower VS Travel Time
ggplot(mtcars, aes(x = hp, y = qsec))+geom_point() + geom_smooth(method=lm, se=FALSE, color = "orange") + ggtitle("Horsepower vs Travel Times") +
  xlab("Engine Horsepower") + ylab("Quarter Miles Traveled From Start")

#The trend looks rather negatively correlated at glance as the linear regression goes from top to bottom


cor.test(mtcars$hp, mtcars$qsec, method= "pearson", use = "complete.obs" )
    #Results in Strong Negative r value -.71
    #p Value = 5.766e-06
    #Based on the linear regression chart it is to be expected

#Chart Correlation

mtcars_hp <- mtcars[ , c(4,6,7)]
chart.Correlation(mtcars_hp, histogram=FALSE, method="pearson")
cor(mtcars_hp)
corrplot(cor(mtcars_hp), type="lower", order="hclust", p.mat = cor(mtcars_hp), sig.level = 0.01, insig="blank")

summary(mtcars$hp)


#Weight VS Travel Time
ggplot(mtcars, aes(x = wt, y = qsec))+geom_point() + geom_smooth(method=lm, se=FALSE, color = "red") + ggtitle("Vehicle Weight vs Travel Times") +
  xlab("Weight of Vehicle") + ylab("Quarter Miles Traveled From Start")

#Though the trend looks rather non-correlated at glance as it goes from the linear regression has a slight tip downward, so more negative than positive.

cor.test(mtcars$wt,mtcars$qsec, method = "pearson", use = "complete.obs")
    #Results in Weak Correlation r value -.17
    #p Value = .3389
    #Based on the linear regression chart it is sort of to be expected, but was expecting a little less.

summary(mtcars$wt)


t.test(mtcars$wt,mtcars$hp, alternative = "two.sided",var.equal = FALSE)