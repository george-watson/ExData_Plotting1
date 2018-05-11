# if data frame not yet in the environment, loads it via the "energy_df.R" script
if(!("energy" %in% ls())) {
        source("energy_df.R")
}

png("plot3.png")

with(energy, plot(datetime, Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering"))

with(energy, lines(datetime, Sub_metering_1))
with(energy, lines(datetime, Sub_metering_2, col = "red"))
with(energy, lines(datetime, Sub_metering_3, col = "blue"))

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("black", "red", "blue"))

dev.off()