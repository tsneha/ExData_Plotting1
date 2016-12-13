
##plot2
data <- read.table("household_power_consumption.txt", header = T, sep = ";", dec = ".", na.strings = "?", stringsAsFactors = F)
Data_sub <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
Data_sub$Global_active_power <- as.numeric(Data_sub$Global_active_power)

Data_sub$Date_time <- strptime(paste(Data_sub$Date, Data_sub$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
png(filename = "plot2.png",width = 480, height = 480, units = "px")
plot(Data_sub$Date_time,Data_sub$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
