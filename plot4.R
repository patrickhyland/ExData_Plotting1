par(mfrow= c(2,2), mar = c(4,4,4,4))
with(file, plot(file$DateTime, file$Global_active_power, type = "l", xlab = "",
                ylab = "Global Active Power (kilowatts)"), cex.axis = .5)
with(file, plot(file$DateTime, file$Voltage, type = "l", xlab = "datetime", ylab = "Voltage"))
with(file,plot(file$DateTime, file$Sub_metering_1,type = "l", ylab = "Energy sub metering"))
lines(file$DateTime, file$Sub_metering_2, col = "red")
lines(file$DateTime,file$Sub_metering_3, col = "blue", type = "l", ylab= "Energy sub metering")
legend("topright", col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd =1, cex = .5, bty = "n") 
with(file, plot(file$DateTime, file$Global_reactive_power, type = "l",
                xlab = "datetime", ylab = "Global_reactive_power"))
dev.copy(png, file = "plot4.png")
dev.off()
