library(datasets)
faithful

eruption_times <- faithful$eruptions

wait_times <- faithful$waiting

summary(eruption_times)

summary(wait_times)

short<- eruption_times[eruption_times<=3]

long <- eruption_times[eruption_times>3]

length (eruption_times)

length(short)
length(long)

mean(short)
mean(long)

sd(short)
sd(long)