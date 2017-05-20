
# set direcyory
directory <- "C:/Users/Jamal/Dropbox/ML-Data-CS materials/Data Science Specialization- Coursera/Exploratory Data Analysis/HW1-base plot practice/"
setwd(directory)

# read data:
fullData <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
selectData <- subset(fullData, Date %in% c("1/2/2007", "2/2/2007"))
rm(fullData)

# plot
datetime <- strptime(with(selectData, paste(Date, Time, sep=" ")), "%d/%m/%Y %H:%M:%S") 
png(file = "plot2.png", width=480, height=480)
with(selectData, plot(datetime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (KW)"))
dev.off()