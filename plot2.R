# if data frame not yet in the environment, loads it via the "energy_df.R" script
if(!("energy" %in% ls())) {
        source("energy_df.R")
}

png("plot2.png")

with(energy, plot(datetime, Global_active_power, type = "n", xlab = "", ylab = "Global Active Power (kilowatts)"))
with(energy, lines(datetime, Global_active_power))

dev.off()