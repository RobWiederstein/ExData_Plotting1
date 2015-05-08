#Rob Wiederstein
#Exploratory Data Analysis
#Peng, Leek, Caffo
#Course Project 1

source("clean_data.R")
load("hpc")

#plot1.png
#univariate frequency plot of single variable
png(filename = "plot1.png", width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white", type = "quartz") #change type if not mac
breaks <- seq(0, 12, by = .5)
hist(hpc$Global_active_power, col = "red", breaks = breaks, xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power", xlim = c(0, 8), axes = F)
axis(side = 1, at = c(0, 2 , 4, 6))
axis(side = 2, at = seq(0, 1200, by = 200))
dev.off()
rm(list = ls())   
