data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na="?")

data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, "%d/%m/%Y")

data <- subset(data, Date %in% (as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")))