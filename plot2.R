#reading data file
library(lubridate)
library(dplyr)

power <- read.csv("week1/household_power_consumption.txt",sep=";",na.strings = "?")
power$Time <- dmy(power$Date) + hms(power$Time)

power <- power %>% select(Time:Sub_metering_3) 

power <- power[power_time >= date("2007-02-01") & power_time < date("2007-02-03"),]

#part2
png(filename="plot2.png")
plot(power$Time,power$Global_active_power,type = "l",ylab ="Global Active Power (kilowatts)",xlab = "")
dev.off()
