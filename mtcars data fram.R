mtcars
library("ggplot2")
library("dplyr")

mtcars$mpg

ggplot(mtcars, aes(x = cyl, y = mpg, fill= "red")) + geom_boxplot(aes(group=cyl))

mtcars %>% group_by(cyl) %>% summarize(mean = n)

summary(mtcars$cyl,mtcars$mpg)

mtcars %>% group_by(mpg) %>% group_by(cyl) %>% summarize(count=mtcars$cyl)

mean(mtcars$mpg)

cars<- (mtcars)
median(mtcars$cyl == 4)
summarize(mtcars, cyl ==4)


