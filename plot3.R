#part3
png(filename="plot3.png")
plot(power$Time,power$Sub_metering_1,type = "l",ylab ="Energy sub metering",xlab = "")
lines(power$Time,power$Sub_metering_2,type = "l",col = "red")
lines(power$Time,power$Sub_metering_3,type = "l",col = "blue")
legend(power$Time[2000],35,c("sub_metering_1","sub_metering_2","sub_metering_3"),lty=c(1,1,1),lwd=c(1,1,1),col=c("black","blue","red") )

dev.off()