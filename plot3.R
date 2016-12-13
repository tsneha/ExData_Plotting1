
##Plot3
data <- read.table("household_power_consumption.txt", header = T, sep = ";", dec = ".", na.strings = "?", stringsAsFactors = F)
Data_sub <- subset(data, Date %in% c("1/2/2007","2/2/2007"))

Data_sub$Sub_metering_1 <- as.numeric(Data_sub$Sub_metering_1)
Data_sub$Sub_metering_2 <- as.numeric(Data_sub$Sub_metering_2)
Data_sub$Sub_metering_3 <- as.numeric(Data_sub$Sub_metering_3)

png(file = "plot3.png", width = 480, height = 480, units = "px")
plot(Data_sub$Date_time, Data_sub$Sub_metering_1, type ="l", xlab = "",ylab = "Energy sub metering")
lines(Data_sub$Date_time, Data_sub$Sub_metering_2, type = "l", col = "red")
lines(Data_sub$Date_time, Data_sub$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd=2, col=c("black", "red", "blue"))
dev.off()
