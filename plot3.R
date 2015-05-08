#Rob Wiederstein
#Exploratory Data Analysis
#Peng, Leek, Caffo
#Course Project 1

source("clean_data.R")
load("hpc")

#plot3.png
#mutiple bivariate plots on same graph
png(filename = "plot3.png", width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white", type = "quartz")
plot(hpc$dt, hpc$Sub_metering_1, col = "black", type = "l", lty = 1, 
     ylim = c(0, 25), xlab = "", axes = F, ylab = "Energy sub metering")
lines(hpc$dt, hpc$Sub_metering_2, col = "red", type = "l", lty = 1)
lines(hpc$dt, hpc$Sub_metering_3, col = "blue", type = "l", lty = 1)
axis(side = 1, at = c(1170350000, 1170400000, 1170450000), labels = c("Thu", "Fri", "Sat"))
axis(side = 2, at = c(0, 10, 20), line = 0)
box()
legend("topright", lty = 1, legend = c("Sub metering 1", "Sub metering 2", "Sub metering 3"),
       col = c("red", "blue", "black"))
dev.off()
rm(list = ls())