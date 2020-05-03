View(airline)

airline[airline$FL_DATE >= "2019-01-01",]

airline <- subset(airline, WEATHER_DELAY > 0)
airline <- subset(airline, CARRIER_DELAY > 0)

hist(airline$WEATHER_DELAY, label = TRUE, main = "Frequency of Weather Delays", xlab = "Minutes Spent in Delay", ylim = c(0, 200))
hist(airline$CARRIER_DELAY, label = TRUE, main = "Frequency of Carrier Delays", xlab = "Minutes Spent in Delay", ylim = c(0, 500))
