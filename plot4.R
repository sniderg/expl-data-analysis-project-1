#part 4
png(filename="plot4.png")
par(mfrow = c(2, 2))

#plot_a
plot(power$Time,power$Global_active_power,type = "l",ylab ="Global Active Power (kilowatts)",xlab = "")

#plot_b
plot(power$Time,power$Voltage,type = "l",ylab ="Voltage",xlab = "datetime")

#plot_c
plot(power$Time,power$Sub_metering_1,type = "l",ylab ="Energy sub metering",xlab = "")
lines(power$Time,power$Sub_metering_2,type = "l",col = "red")
lines(power$Time,power$Sub_metering_3,type = "l",col = "blue")
legend(power$Time[2000],35,c("sub_metering_1","sub_metering_2","sub_metering_3"),lty=c(1,1,1),lwd=c(1,1,1),col=c("black","blue","red") )

#plot_d
plot(power$Time,power$Global_reactive_power,type = "l",ylab ="Voltage",xlab = "datetime")

dev.off()