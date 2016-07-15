setwd("D:/projects/new/ExData_Plotting1-master")
file<-read.table("household_power_consumption.txt",
                 header=TRUE,
                 sep=";",
                 colClasses = c("character","character", rep("numeric",7)),
                 na="?")
newfile<-newf<-file[(file$Date=="1/2/2007")|(file$Date=="2/2/2007"),]
x <- paste(newfile$Date, newfile$Time)
newfile$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newfile)<-1:nrow(newfile) 