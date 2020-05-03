View(airline)

airline[airline$FL_DATE >= "2019-01-01",]

## Removing all zero and N/A values
airline <- subset(airline, WEATHER_DELAY > 0)
airline <- subset(airline, CARRIER_DELAY > 0)

NROW(airline$WEATHER_DELAY)
NROW(airline$CARRIER_DELAY)

## Weather Delay
mean = 19.73939
var = 262.938
n = 495
t = qt(0.955, 494)
mean - t * var / sqrt(n)
## -0.3364957
mean + t * var / sqrt(n)
## 39.81528

## Carrier Delay
mean = 31.70101
var = 1884.08
n = 495
t = qt(0.955, 494)
mean - t * var / sqrt(n)
## -112.1526
mean + t * var / sqrt(n)
## 175.5546
