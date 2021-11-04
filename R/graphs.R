here::i_am("R/graphs.R")
data(mtcars)


library(dplyr)
dataset<-mtcars
#grosspower=mpg+wt+am
#am is a factor
dataset$am<-factor(dataset$am)
#head(dataset)
#select the variables we need
dataset1<-dataset%>%select(1,4,6,9)
fit<-lm(hp~mpg+wt+am,data=dataset1)
summary(fit)
par(mfrow=c(2,2))
plot(fit)

png(here::here("figs", "graphs.png"))
par(mfrow=c(2,2))
plot(fit)

dev.off()