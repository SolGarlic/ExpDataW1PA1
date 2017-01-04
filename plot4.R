source('./auxfun.R')
source('./plot2.R')
source('./plot3.R')

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

plot4()