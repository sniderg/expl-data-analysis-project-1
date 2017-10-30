
#part2
png(filename="plot2.png")
plot(power$Time,power$Global_active_power,type = "l",ylab ="Global Active Power (kilowatts)",xlab = "")
dev.off()