View(airline)

airline[airline$FL_DATE >= "2019-01-01",]

## Removing all zero and N/A values
airline <- subset(airline, WEATHER_DELAY > 0)
airline <- subset(airline, CARRIER_DELAY > 0)

airline.lm <- lm(WEATHER_DELAY ~ CARRIER_DELAY, data = airline)
plot(airline$WEATHER_DELAY, airline$CARRIER_DELAY, 
     xlab = "Carrier Delay in Minutes", 
     ylab = "Weather Delay in Minutes", 
     main = "Weather vs Carrier Delay")
abline(lm(airline$WEATHER_DELAY ~ airline$CARRIER_DELAY), col = "red")

## Residuals
hist(resid(airline.lm), main = "Residuals of Delays", xlab = "Residuals")

## R-Squared
summary(airline.lm)$r.squared 
## 0.03332659

## Actual observed response value (x axis) vs. residual (y axis)
plot(airline$WEATHER_DELAY + airline$CARRIER_DELAY, resid(airline.lm), 
     xlab = "Minutes in Delay", ylab = "Residuals", 
     main = "Residuals for Weather + Carrier Delay")