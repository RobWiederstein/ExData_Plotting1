#Rob Wiederstein
#Exploratory Data Analysis
#Peng, Leek, Caffo
#Course Project 1

source("clean_data.R")
load("hpc")

#plot2.png
#bivariate w/ date as x-axis and global active power as y-axis
png(filename = "plot2.png", width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white", type = "quartz")
plot(hpc$dt, hpc$Global_active_power, type = "l", lty = 1, 
     ylab = "Global Active Power (kilowatts)", xlab = "", 
     ylim = c(0, 7), axes = F)
axis(side = 2, at = c(0, 2, 4, 6), line = 0)
axis(side = 1, at = c(1170350000, 1170400000, 1170450000), labels = c("Thu", "Fri", "Sat"))
box()
dev.off()
rm (list = ls())
