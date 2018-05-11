# if data frame not yet in the environment, loads it via the "energy_df.R" script
if(!("energy" %in% ls())) {
        source("energy_df.R")
}

png("plot1.png")
hist(energy$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
