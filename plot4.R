## This file is R script file for
## drawing 
##     - Global Active Power line graph
##     - Voltage line graph
##     - Energy sub metering line graph
##     - Global reactive power line graph
## from 2007-02-01 to 2007-02-02 of Electric power consumption Dataset.
## 
## This script needs data files in the directory named data.
## The data files can be get from below site and are needed to
## be unzipped before running this script.
## https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
##
## This script output these files.
##   * plot4.png
##     - Global Active Power line graph
##     - Voltage line graph
##     - Energy sub metering line graph
##     - Global reactive power line graph

## ------------------------------------------------------------
## read data and name columns (common for plot[1-4].R)
## ------------------------------------------------------------
dat <- read.table(pipe('grep "^[12]/2/2007" "data/household_power_consumption.txt"'),header=F, sep=';', colClasses=c(rep("character", 2), rep("numeric", 7)))
colnames(dat) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

## ------------------------------------------------------------
## prepare for drawing graphs.
## ------------------------------------------------------------
dateTime <- strptime(paste(dat$Date, dat$Time), "%d/%m/%Y %T")
png(filename="plot4.png", width=480, height=480)
par(mfrow = c(2, 2))

## ------------------------------------------------------------
## draw
##     - Global Active Power line graph
## ------------------------------------------------------------
plot(dateTime, dat$Global_active_power, type="l", xlab="", ylab="Global Active Power")

## ------------------------------------------------------------
## draw
##     - Voltage line graph
## ------------------------------------------------------------
plot(dateTime, dat$Voltage, type="l", xlab="datatime", ylab="Voltage")

## ------------------------------------------------------------
## draw
##     - Energy sub metering line graph
## ------------------------------------------------------------
plot(dateTime, dat$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
col <- c("black", "red", "blue")
for(i in 1:3) {
    colName <- sprintf("Sub_metering_%d", i)
    points(dateTime, dat[[colName]], type="l", col=col[i])
}
subMeteringCols <- grep("^Sub_metering_", colnames(dat))
subMeteringNames <- colnames(dat)[subMeteringCols]
legend("topright", lty=1, col=col, legend=subMeteringNames, bty="n")

## ------------------------------------------------------------
## draw
##     - Global reactive power line graph
## ------------------------------------------------------------
plot(dateTime, dat$Global_reactive_power, type="l", xlab="datatime", ylab="Global_reactive_power")

dev.off()
