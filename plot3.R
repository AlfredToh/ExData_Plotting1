# Plot 3
# open device
if(!file.exists('figures')) dir.create('figures')
png(filename = './figures/plot3.png', width = 480, height = 480, units='px')
# plot figure
plot(data$datetime, data$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l')
lines(data$datetime, data$Sub_metering_2, col = 'red')
lines(data$datetime, data$Sub_metering_3, col = 'blue')
legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)
# close device
dev.off()