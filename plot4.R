#Rob Wiederstein
#Exploratory Data Analysis
#Peng, Leek, Caffo
#Course Project 1

source("clean_data.R")
load("hpc")

#plot4.png
#4 charts on one background
png(filename = "plot4.png", width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white", type = "quartz")
par(mfrow = c(2, 2))
#Chart 1
plot(hpc$dt, hpc$Global_active_power, type = "l", lty = 1, 
     ylab = "Global Active Power (kilowatts)", xlab = "", 
     ylim = c(0, 7), axes = F)
axis(side = 2, at = c(0, 2, 4, 6), line = 0)
axis(side = 1, at = c(1170350000, 1170400000, 1170450000), labels = c("Thu", "Fri", "Sat"))
box()
#Chart 2
plot(hpc$dt, hpc$Voltage, type = "l", lty = 1, xlab = "datetime", ylab = "Voltage")
#Chart 3
plot(hpc$dt, hpc$Sub_metering_1, col = "black", type = "l", lty = 1, 
     ylim = c(0, 40), xlab = "", axes = F, ylab = "Energy sub metering")
lines(hpc$dt, hpc$Sub_metering_2, col = "red", type = "l", lty = 1)
lines(hpc$dt, hpc$Sub_metering_3, col = "blue", type = "l", lty = 1)
axis(side = 1, at = c(1170350000, 1170400000, 1170450000), labels = c("Thu", "Fri", "Sat"))
axis(side = 2, at = c(0, 10, 20, 30), line = 0)
box()
legend("topright", lty = 1, legend = c("Sub metering 1", "Sub metering 2", "Sub metering 3"),
       col = c("red", "blue", "black"), box.lty = 0)
#Chart 4
plot(hpc$dt, hpc$Global_reactive_power, type = "l", lty = 1, xlab = "datetime", ylab = 
         "Global reactive power")
dev.off()

rm(list = ls())