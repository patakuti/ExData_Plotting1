## Abstract

This repository is for Course Project1 of Coursera's Exploratory Data
Analysis class.
This includes these files.
* plot1.R  
    R script for drawing Global Active Power Histogram.
* plot1.png  
    The output of plot1.R.
* plot2.R  
    R script for drawing Global Active Power line graph.
* plot2.png  
    The output of plot2.R.
* plot3.R  
    R script for drawing Energy sub metering line graph.
* plot3.png  
    The output of plot3.R.
* plot4.R  
    R script for drawing 
     - Global Active Power line graph
     - Voltage line graph
     - Energy sub metering line graph
     - Global reactive power line graph
* plot4.png  
    The output of plot4.R.

## Dataset

Description for dataset needed above scripts.

Above scripts use data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Individual household
electric power consumption Data Set" which is available on
the course web site:

* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Running Scripts

All script need data files household_power_consumption.txt
in the directory named data.
The data files can be get from below site and are needed to
be unzipped before running this script.

https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

Type source("plot1.R")&lt;Enter&gt; to run the script plot1.R.
Other scripts can be runned similaly.

## What Each Script Does
<b>plot1.R</b>

Load data and draw Global Active Power Histogram and save it to plot1.png

<b>plot2.R</b>

Load data and draw Global Active Power line graph and save it to plot2.png

<b>plot3.R</b>

Load data and draw Global Active Power line graph and save it to plot3.png

<b>plot2.R</b>

Load data and draw
 - Global Active Power line graph
 - Voltage line graph
 - Energy sub metering line graph
 - Global reactive power line graph

and save it to plot4.png
