load("weather.RData")
str(weather)
quartz()
dotchart(weather$WinSpd, group=weather$Loc, xlab="Wind Speed(Knots)")
library("lattice")
histogram(~WinSpd|Loc, data=weather)

QQplots
(x<-rnorm(10))
(y<-rnorm(10))
(x<-sort(x))
(y<-sort(y))
plot(x,y)
abline(0,1)
qqplot(x,y)
abline(0,1)

Roch<-weather$WinSpd [ weather$Loc=="Roch"]
Buff<-weather$WinSpd [weather$Loc=="Buff"]
qqplot(Roch, Buff)
abline(0,1)
Sara<-weather$WinSpd[weather$Loc =="Sara"]
qqplot(Roch, Sara)
abline(0,1)

rug(Roch)
rug(Sara, side=4)

Turkey
z<-qqplot(Roch, Buff, plot.it=F)
str(z)
plot((z$x+z$y)/2, z$y-z$x, xlab="Average Wind Speed", ylab="Buff- Roch(Knots")

Box and Violin
boxplot(Sara, notch=T)
boxplot(WinSpd~ Loc, notch=T, col="pink", data=weather)
bwplot(WinSpd~Loc, panel="panel.violin", data=weather)
