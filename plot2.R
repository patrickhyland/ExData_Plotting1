
library(data.table)
file$DateTime <- as.data.table(strptime(paste(file$Date, file$Time),"%Y-%m-%d %H:%M:%S"))

with(file, plot(file$DateTime, file$Global_active_power, type = "l", xlab = "",
                ylab = "Global Active Power (kilowatts)"))
par(mar=c(2,4,4,2))
