with(file,plot(file$DateTime, file$Sub_metering_1,type = "l", ylab = "Energy sub metering"))
     lines(file$DateTime, file$Sub_metering_2, col = "red")
     lines(file$DateTime,file$Sub_metering_3, col = "blue", type = "l", ylab= "Energy sub metering")
legend("topright", col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd =1, cex = .5)     
dev.copy(png, file = "plot3.png")
dev.off()

