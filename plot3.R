source("readingData.R")
png('plot3.png', width=480, height = 480, units="px")
plot(df$Time, df$Sub_metering_1, type = "n", xlab="", ylab="Energy sub metering")
points(df$Time, df$Sub_metering_1, type = "l", col="black")
points(df$Time, df$Sub_metering_2, type = "l", col="red")
points(df$Time, df$Sub_metering_3, type = "l", col = "blue")
legend("topright",col=c("black", "red", "blue"),c("Sub_metering_1", 
                "Sub_metering_2", "Sub_metering_3"),lty=1, cex=0.75)
dev.off()