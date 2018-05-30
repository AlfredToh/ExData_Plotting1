# Plot 2
# convert data and time to specific format
data$datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
# open device
if(!file.exists('figures')) dir.create('figures')
png(filename = './figures/plot2.png', width = 480, height = 480, units='px')
# plot figure
plot(data$datetime, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatts)', type = 'l')
# close device
dev.off()