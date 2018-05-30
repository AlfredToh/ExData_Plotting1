# Plot 1
# open device
if(!file.exists('figures')) dir.create('figures')
png(filename = './figures/plot1.png', width = 480, height = 480, units='px')
# plot figure
with(data, hist(Global_active_power, xlab = 'Global Active Power (kilowatts)', main = 'Global Active Power', col = 'red'))
# close device
dev.off()