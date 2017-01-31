setwd("C:/Users/phyland/Desktop/RWorkingDirectory/4.1")
library(data.table)
file <- fread("household_power_consumption.txt", na.strings = "?")

file$Date <- as.Date(file$Date,"%d/%m/%Y")

file <- file[file$Date >= "2007-02-01"]
file <- file[file$Date <= "2007-02-02"]


hist(file$Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red", main = "Global Active Power")
title("")
dev.copy(png, file = "plot1.png")
dev.off()
