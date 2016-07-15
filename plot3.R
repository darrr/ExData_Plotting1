source("subset.R")

png(filename = "plot3.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")

with(newfile,plot(DateTime,Sub_metering_1, type = "l",xlab = "", ylab = "Energy sub metering"))
lines(newfile$DateTime,newfile$Sub_metering_2,type = "l",col="red")
lines(newfile$DateTime,newfile$Sub_metering_3,type = "l",col="blue")

legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

dev.off() 