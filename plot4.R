# if data frame not yet in the environment, loads it via the "energy_df.R" script
if(!("energy" %in% ls())) {
        source("energy_df.R")
}

png("plot4.png")

par(mfrow = c(2,2))

# first plot
with(energy, plot(datetime, Global_active_power, type = "n", xlab = "", ylab = "Global Active Power"))
with(energy, lines(datetime, Global_active_power))

# second plot
with(energy, plot(datetime, Voltage, type = "n"))
with(energy, lines(datetime, Voltage))

# third plot
with(energy, plot(datetime, Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering"))
with(energy, lines(datetime, Sub_metering_1))
with(energy, lines(datetime, Sub_metering_2, col = "red"))
with(energy, lines(datetime, Sub_metering_3, col = "blue"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("black", "red", "blue"))

# fourth plot
with(energy, plot(datetime, Global_reactive_power, type = "n"))
with(energy, lines(datetime, Global_reactive_power))

dev.off()