View(airline)

airline[airline$FL_DATE >= "2019-01-01",]

plot(airline$WEATHER_DELAY, airline$CARRIER_DELAY, xlab = "Weather Delay", 
     ylab = "Carrier Delay", main = "Weather vs Carrier Delay")

abline(lm(airline$WEATHER_DELAY~airline$CARRIER_DELAY), col="red")
cor(airline$WEATHER_DELAY, airline$CARRIER_DELAY)
## 0.1825557