
source('./auxfun.R')

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
plot3()
