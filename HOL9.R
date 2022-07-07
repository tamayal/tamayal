#Lesson 9 Hands On
#Let's get started
install.packages("gapminder")
library("gapminder")
library("dplyr")
library("ggplot2")
library(PerformanceAnalytics)
library(gridExtra)

levels(gapminder$country)
#using countries: Uganda, Serbia, Nigeria, Germany, Costa Rica

#Reviwing all the data
View(gapminder)

#Filtering my countries by per capita 1952
TLC52 <- gapminder %>%
  filter(country %in% c("Uganda", "Serbia", "Germany", "Nigeria", "Costa Rica")) %>% filter(year == 1952)%>%
  select(country, year, lifeExp, gdpPercap) %>% arrange(desc(gdpPercap))

View(TLC52)


#Filtering my countries by per capita 2007
TLC07 <- gapminder %>%
  filter(country %in% c("Uganda", "Serbia", "Germany", "Nigeria", "Costa Rica")) %>% filter(year == 2007)%>%
  select(country, year, lifeExp, gdpPercap) %>% arrange(desc(gdpPercap))

View(TLC07)


#Life Expectancy

#Filter by countries
TLC<- gapminder %>%
  filter(country %in% c("Uganda", "Serbia", "Germany", "Nigeria", "Costa Rica")) %>%
  select(country, year, lifeExp, gdpPercap) %>% arrange(desc(gdpPercap))

TL_LExp <- ggplot(TLC) + geom_line(aes(x = year, y = lifeExp, color = country)) 

TL_LExp



#Entire Gapminder Life expectancy by year

GMedian <-gapminder %>% select(country , year , lifeExp) %>% group_by(year) %>% summarise( MedLE= median(lifeExp))
View(GMedian)

ggplot(GMedian,aes(x = year, y = MedLE)) + geom_line()+ geom_point(aes(size=MedLE))+ ylab("Median Life Expectancy")+ ggtitle( "Life Expectancy 1952-2007")


grid.arrange(ggplot(GMedian,aes(x = year, y = MedLE)) + geom_line()+ geom_point(aes(size=MedLE))+ ylab("Median Life Expectancy")+ ggtitle( "Life Expectancy 1952-2007")
, TL_LExp, ncol = 1)


#Other Stuff
library(PerformanceAnalytics)
library(reshape2)

UGPop <- gapminder %>% filter(country %in% "Uganda")
GYPop <- gapminder %>% filter(country %in% "Germany")

#Correlation Test on Uganda

cor.test(UGPop$lifeExp, UGPop$gdpPercap, method= "pearson" , use = "complete.obs")
#r value is .21 moderately positive


#Correlation Test on Germany

cor.test(GYPop$lifeExp, GYPop$gdpPercap, method= "pearson" , use = "complete.obs")
#Rvalue is .99 Strongly positive!
unique(gapminder$year)

#My favorite country is Germany, for some strange reason
# I want to see if life in 1992 (The year after I was born) was greater that in 1962.

GM1992 <- filter(GYPop, year == 1992) %>% select(country, year, lifeExp)
View(GM1992)

GM1962 <- filter(GYPop, year == 1962) %>% select(country, year, lifeExp)
View(GM1962)

CGM<-filter(GYPop, year >1962) %>% select(country, year, lifeExp)

SEGM<-gapminder %>%
  filter(country %in% c("Serbia", "Germany")) %>%
  select(country, year, lifeExp, gdpPercap) %>% arrange(desc(gdpPercap))

#Let's see what the overall life expectancy was in 1962 to 2007 in Germany VS Serbia

ggplot(SEGM, aes(x = lifeExp, y = year, color=country))+ geom_point()+ ggtitle("Life Expectancy: Germany vs Serbia")
#Looks like they progressed the same with Germany still ahead.

#THANK YOU!
#HOPING FOR AN "A"