## This file is R script file for
## drawing Energy sub metering line graph
## from 2007-02-01 to 2007-02-02 of Electric power consumption Dataset.
## 
## This script needs data files in the directory named data.
## The data files can be get from below site and are needed to
## be unzipped before running this script.
## https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
##
## This script output these files.
##   * plot3.png
##        Energy sub metering line graph

## ------------------------------------------------------------
## read data and name columns (common for plot[1-4].R)
## ------------------------------------------------------------
dat <- read.table(pipe('grep "^[12]/2/2007" "data/household_power_consumption.txt"'),header=F, sep=';', colClasses=c(rep("character", 2), rep("numeric", 7)))
colnames(dat) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

## ------------------------------------------------------------
## draw graph and save as PNG file.
## ------------------------------------------------------------
dateTime <- strptime(paste(dat$Date, dat$Time), "%d/%m/%Y %T")

subMeteringCols <- grep("^Sub_metering_", colnames(dat))
subMeteringNames <- colnames(dat)[subMeteringCols]

png(filename="plot3.png", width=480, height=480)
plot(dateTime, dat$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
col <- c("black", "red", "blue")
for(i in 1:3) {
    colName <- sprintf("Sub_metering_%d", i)
    points(dateTime, dat[[colName]], type="l", col=col[i])
}
legend("topright", lty=1, col=col, legend=subMeteringNames)
dev.off()
