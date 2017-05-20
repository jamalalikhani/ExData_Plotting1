
# set direcyory
directory <- "C:/Users/Jamal/Dropbox/ML-Data-CS materials/Data Science Specialization- Coursera/Exploratory Data Analysis/HW1-base plot practice/"
setwd(directory)

# read data:
fullData <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
selectData <- subset(fullData, Date %in% c("1/2/2007", "2/2/2007"))
rm(fullData)

# plot
datetime <- strptime(with(selectData, paste(Date, Time, sep=" ")), "%d/%m/%Y %H:%M:%S") 

png(file = "plot4.png", width=480, height=480)
par(mfrow = c(2,2))

with(selectData, plot(datetime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (KW)"))

with(selectData, plot(datetime, Voltage, type = "l", xlab = "", ylab = "Voltage"))

with(selectData, plot(datetime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering", col = "red"))
with(selectData, lines(datetime, Sub_metering_2, col = "green"))
with(selectData, lines(datetime, Sub_metering_3, col = "blue"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 1, col = c("red", "green", "blue"))

with(selectData, plot(datetime, Global_reactive_power, type = "l", xlab = "", ylab = "Global Reactive Power (KW)"))

dev.off()