View(jan_2019)

## Jan 2019 
jan_2019[jan_2019$FL_DATE >= "2019-01-01",]

## Removing all zero and N/A values
jan_2019 <- subset(jan_2019, WEATHER_DELAY > 0)
jan_2019 <- subset(jan_2019, CARRIER_DELAY > 0)

mean(jan_2019$WEATHER_DELAY)
## 33.07197
median(jan_2019$WEATHER_DELAY)
## 16
var(jan_2019$WEATHER_DELAY)
## 5832.45
sd(jan_2019$WEATHER_DELAY)
## 76.37048

mean(jan_2019$CARRIER_DELAY)
## 37.25947
median(jan_2019$CARRIER_DELAY)
## 15
var(jan_2019$CARRIER_DELAY)
## 262.938
sd(jan_2019$CARRIER_DELAY)
## 16.21536

## June 2019
june_2019[june_2019$FL_DATE >= "2019-06-01",]

## Removing all zero and N/A values
june_2019 <- subset(june_2019, WEATHER_DELAY > 0)
june_2019 <- subset(june_2019, CARRIER_DELAY > 0)

mean(june_2019$WEATHER_DELAY)
## 60.37143
median(june_2019$WEATHER_DELAY)
## 27
var(june_2019$WEATHER_DELAY)
## 13908.01
sd(june_2019$WEATHER_DELAY)
## 117.9322

mean(june_2019$CARRIER_DELAY)
## 47.77381
median(june_2019$CARRIER_DELAY)
## 20
var(june_2019$CARRIER_DELAY)
## 8262.452
sd(june_2019$CARRIER_DELAY)
## 90.89803

NROW(june_2019$WEATHER_DELAY)
# 420

NROW(june_2019$CARRIER_DELAY)
## 420

qt(1 - (0.95), 419)
## -1.648498