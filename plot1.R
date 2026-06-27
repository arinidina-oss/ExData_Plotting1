setwd("D:/Coursera")
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
sub_data <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
sub_data$DateTime <- strptime(paste(sub_data$Date, sub_data$Time), format = "%Y-%m-%d %H:%M:%S")

png("plot1.png", width = 480, height = 480)
hist(sub_data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()