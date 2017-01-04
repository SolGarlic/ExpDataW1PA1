readData <- function() {
      top <- read.table("household_power_consumption.txt",
                        header=TRUE, sep=";", 
                        colClasses=c("character","character",rep("numeric",7)),
                        na.strings = "?",
                        skip=0,
                        nrows=70000)
      top <- subset(top, top$Date=="1/2/2007"|top$Date=="2/2/2007")
      
      top$DateTime <-strptime(paste(top$Date,top$Time),"%d/%m/%Y %H:%M:%S")
      top <- top[c(10,3:9)]
      top
}

createall <- function(top=NULL,png=TRUE) {
      if (is.null(top)) {top <- readData()   }   
      plot1(top,png)
      plot2(top,png)
      plot3(top,png)
      plot4(top,png)
}