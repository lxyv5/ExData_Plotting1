#reading data
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
#plot
png(filename = "./plot1.png", width = 480,height = 480,
    units='px')
with(subdata, hist(as.numeric(Global_active_power), 
                xlab = "Global Active Power (kilowatt)", 
                main = "Global Active Power", col = "red"))
dev.off()
