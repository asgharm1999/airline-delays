View(airline)

airline[airline$FL_DATE >= "2019-01-01",]

hist(airline$WEATHER_DELAY, main = "Frequency of Weather Delays", xlab = "Minutes Spent in Delay")
hist(airline$CARRIER_DELAY, main = "Frequency of Carrier Delays", xlab = "Minutes Spent in Delay")

## this makes it so R does not use Scientific Notation on the Y-Axis
options(scipen = 999)

cancelled <- table(airline$CANCELLED)
cancelled

diverted <- table(airline$DIVERTED)
diverted

cancellation.plot <- barplot(cancelled, main = "Count of Cancellations", xlab = "No / Yes", names = c("No", "Yes"), ylab = "Frequency", ylim = c(0, 600000))
text(cancellation.plot, 0, round(cancelled, 1),cex = 1, pos = 3) 

diverted.plot <- barplot(diverted, main = "Count of Diversions", xlab = "No / Yes", names = c("No", "Yes"), ylab = "Frequency", ylim = c(0, 600000))
text(diverted.plot, 0, round(diverted, 1), cex = 1, pos = 3) 
