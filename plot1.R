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

