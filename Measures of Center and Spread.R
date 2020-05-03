View(airline)

airline[airline$FL_DATE >= "2019-01-01",]

## WEATHER DELAYS

## Removing all zero and N/A values
airline <- subset(airline, WEATHER_DELAY > 0)

mean(airline$WEATHER_DELAY)
## 19.73939
median(airline$WEATHER_DELAY)
## 15
var(airline$WEATHER_DELAY)
## 262.938
sd(airline$WEATHER_DELAY)
## 16.21536

## CARRIER DELAYS

## Removing all zero and N/A values
airline <- subset(airline, CARRIER_DELAY > 0)

mean(airline$CARRIER_DELAY)
## 31.70101
median(airline$CARRIER_DELAY)
## 18
var(airline$CARRIER_DELAY)
## 1884.08
sd(airline$CARRIER_DELAY)
## 43.406