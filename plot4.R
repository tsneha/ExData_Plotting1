##Plot4
data <- read.table("household_power_consumption.txt", header = T, sep = ";", dec = ".", na.strings = "?", stringsAsFactors = F)
Data_sub <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
Data_sub$Global_active_power <- as.numeric(Data_sub$Global_active_power)

Data_sub$Global_reactive_power <- as.numeric(Data_sub$Global_reactive_power)
png(file = "plot4.png", width = 480, height = 480, units = "px")

par(mfrow= c(2,2))
plot(Data_sub$Date_time,Data_sub$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
plot(Data_sub$Date_time,Data_sub$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
plot(Data_sub$Date_time, Data_sub$Sub_metering_1, type ="l", xlab = "",ylab = "Energy sub metering")
lines(Data_sub$Date_time, Data_sub$Sub_metering_2, type = "l", col = "red")
lines(Data_sub$Date_time, Data_sub$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd=2, col=c("black", "red", "blue"))

plot(Data_sub$Date_time,Data_sub$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()
