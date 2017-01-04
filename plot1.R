# png=1, PNG

source('./auxfun.R')

plot1 <- function(top=NULL, png=1) {
      if (is.null(top)) {top <- readData()   }   
      if(png==1) {png(filename="plot1.png")}
      if(png==2) {dev.set(2)} #{windows()}
      
      par(mar=c(4,4,4,4))
      with(top, hist(Global_active_power, 
                     col="red", 
                     ylab="Frequency", 
                     main="Global Active Power", 
                     xlab="Global Active Power (KiloWatts)"))
      if(png==1) {dev.off()}
      # dev.off()
}


plot1()


plot2 <- function(top=NULL, png=1) {
      if (is.null(top)) {top <- readData()   }   
      if(png==1) {png(filename="plot2.png")}
      if(png==2) {windows()}
      
      
      par(mar=c(4,4,4,4))
      with(top, plot(DateTime,Global_active_power, 
                     ylab="Global Active Power (KiloWatts)",
                     xlab="", 
                     type="l"))
      if(png==1) {dev.off()}
}

plot3 <- function(top=NULL, png=1) {
      if (is.null(top)) {top <- readData()   }   
      if(png==1) {png(filename="plot3.png")}
      if(png==2) {windows()}
      
      
      par(mar=c(4,4,4,4))
      plot(top$DateTime,top$Sub_metering_1,type="l", xlab="", ylab="Energy sub metering")
      lines(top$DateTime,top$Sub_metering_2,col="red")
      lines(top$DateTime,top$Sub_metering_3,col="blue")
      legend("topright", lty=1, col = c("black","blue", "red"), legend = names(top)[6:8])
      if(png==1) {dev.off()}
}

plot4 <- function(top=NULL, png=TRUE) {
      if (is.null(top)) {top <- readData()   }   
      if(png==1) {png(filename="plot4.png")}
      if(png==2) {windows()}
      
      
      par(mfcol = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
      plot2(top,3)
      plot3(top,3)
      with(top, plot(DateTime, Voltage, type="l"))
      with(top, plot(DateTime, Global_reactive_power, type="l"))
      
      
      if(png==1) {dev.off()}
}

