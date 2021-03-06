png(file="plot3.png",width = 480, height = 480)

filea <- read.csv("household_power_consumption.txt",sep=";")
file1 <- subset(filea, Date == "1/2/2007" | Date == "2/2/2007")

Date3 <- as.POSIXct(paste(file1$Date,file1$Time),format="%d/%m/%Y %H:%M:%S",tz="")
file2 <- cbind(file1, Date3)

with(file2, {
  
  plot(Date3, Sub_metering_1,xlab="",ylab="Energy sub metering",type="n")
  lines(Date3, Sub_metering_1)
  lines(Date3, Sub_metering_2,col="RED")
  lines(Date3, Sub_metering_3,col="BLUE")
  legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1  )
  
})
dev.off()

