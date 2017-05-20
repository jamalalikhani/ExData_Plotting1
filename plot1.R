
# set direcyory
directory <- "C:/Users/Jamal/Dropbox/ML-Data-CS materials/Data Science Specialization- Coursera/Exploratory Data Analysis/HW1-base plot practice/"
setwd(directory)

# read data:
fullData <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
selectData <- subset(fullData, Date %in% c("1/2/2007", "2/2/2007"))
rm(fullData)

# plot
png(file = "plot1.png", width=480, height=480)
x <- selectData$Global_active_power
hist(x, col = "red", xlab = "Global Active Power (KW)", main = "Global Active Power")
dev.off()