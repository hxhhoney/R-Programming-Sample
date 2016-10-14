Bank=read.table("F:/project.txt",header=T,na.strings="NA",sep="")
plot(Bank$x1,Bank$x13,xlab="year",ylab="Dollar amounts in thousands",main="Graph for Net Income",lty=1, type="l",col=1)
Sample1=subset(Bank$x13, Bank$x1>=1958&Bank$x1<1988)
Sample2=subset(Bank$x13, Bank$x1>=1980&Bank$x1<2010)
Data=data.frame(Sample1,Sample2)
Data
summary(Sample1)
summary(Sample2)

plot(1:30,Sample1,ylab="Dollar amounts in thousands",main="Graph for Net Income",lty=1, type="l",col=1)
par(new=TRUE)
plot(1:30,Sample2,lty=1, type="l",col=2)
legend(15,8.0e+07,legend=c("Sample1","Sample2"),lty=1,col=c(1,2))
lillie.test(Sample1)
lillie.test(Sample2)

model=lm(Sample1~Sample2)
plot(Sample1,Sample2,main="scatter plot of the Net Income")
abline(model)

wilcox.test(Sample1,Sample2)

cor.test(Sample1,Sample2)
cor.test(Sample1,Sample2,method="s")
cor.test(Sample1,Sample2,method="k")