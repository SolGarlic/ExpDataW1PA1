
source('./auxfun.R')

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
plot2()

