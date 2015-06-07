source("readingData.R")
png('plot4.png', width=480, height = 480, units = "px")
par(mfrow=c(2,2))
par(mar=c(4,4,1,1))
plot(df$Time, df$Global_active_power, type = "l", xlab ="",
     ylab = "Global Active Power (kilowatts)")
plot(df$Time, df$Voltage, type = "l", xlab ="datetime",
     ylab = "Voltage")
plot(df$Time, df$Sub_metering_1, type = "n", xlab="", ylab="Energy sub metering")
points(df$Time, df$Sub_metering_1, type = "l", col="black")
points(df$Time, df$Sub_metering_2, type = "l", col="red")
points(df$Time, df$Sub_metering_3, type = "l", col = "blue")
legend("topright",col=c("black", "red", "blue"),c("Sub_metering_1", 
                  "Sub_metering_2", "Sub_metering_3"),lty=1, bty="n", cex=0.9)
plot(df$Time, df$Global_reactive_power, type = "l", xlab ="datetime",
     ylab = "Global_reactive_power")
dev.off()