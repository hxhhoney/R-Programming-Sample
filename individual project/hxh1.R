Bank=read.table("F:/project.txt",header=T,na.strings="NA",sep="")

x<-seq(1934,2012,1)
plot(x,Bank$x13,from=1995,to=2012,xlab="year",ylab="Dollar amounts in thousands",main="Graph for Net Income",lty=1, type="l",col)



par(new=TRUE)
plot(x,Bank$x3,c(1995,2012),xlab="year",ylab="Dollar amounts in thousands",lty=1, type="l",col=2)
par(new=TRUE)
plot(x,Bank$x4,xlab="year",ylab="Dollar amounts in thousands",lty=1, type="l",col=3)
par(new=TRUE)
plot(x,Bank$x5,xlab="year",ylab="Dollar amounts in thousands",lty=1, type="l",col=4)

