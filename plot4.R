# Plot 4
# open device
if(!file.exists('figures')) dir.create('figures')
png(filename = './figures/plot4.png', width = 480, height = 480, units='px')
# plot figure
par(mfrow = c(2, 2))
plot(data$datetime, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
plot(data$datetime, data$Voltage, xlab = 'datetime', ylab = 'Voltage', type = 'l')
plot(data$datetime, data$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l')
lines(data$datetime, data$Sub_metering_2, col = 'red')
lines(data$datetime, data$Sub_metering_3, col = 'blue')
legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)
plot(data$datetime, data$Global_reactive_power, xlab = 'datetime', ylab = 'Global_reactive_power', type = 'l')
# close device
dev.off()