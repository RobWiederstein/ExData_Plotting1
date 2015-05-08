#Rob Wiederstein
#Exploratory Data Analysis
#Peng, Leek, Caffo
#Course Project 1

#set working directory
#setwd("~/Desktop/peng-explora")
#import data
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
temp <- tempfile()
download.file(url, temp, method = "curl", mode = "wb", cacheOK = T) #must b/c "https" connect
unzip(temp)

#read data
q <- read.table(file = "household_power_consumption.txt", sep = ";", header = T, as.is = T)

#subset data to dates
dates <- c("1/2/2007", "2/2/2007")
hpc <- q[q$Date %in% dates, ]

#format variables
hpc[, 3:9] <- apply(hpc[, 3:9], MARGIN = 2, as.numeric)
dt <- paste(hpc[, 1], hpc[, 2])
hpc$dt <- strptime(dt, "%d/%m/%Y %H:%M:%S")

#export cleaned data 2880 observations 10 variables
save(hpc, file = "hpc")
rm(list = ls())
