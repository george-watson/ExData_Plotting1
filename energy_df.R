library(dplyr)

# downloads zip file, then unzips it and reads it into a data frame
temp <- tempfile()
download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp)
energy <- read.table(unz(temp, "household_power_consumption.txt"), sep = ";", quote = "", header = T, na.strings = "?", nrows = 69516)[-(1:66636),]
unlink(temp)


# replaces both the "Date" and "Time" variablesby a POSIXct variable "datetime" 
energy <- bind_cols(transmute(energy, datetime = as.POSIXct(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S")), energy[,-(1:2)])