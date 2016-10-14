

Data=read.table("F:/elec.txt",header=T,sep="")





library(MASS)
model=lm(y~x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12)
plot(model)
add1(lm(y~1), scope=(~.+x4+x5+x6+x7+x8+x9+x10+x11+x12),test="F")

drop(model)

step <- stepAIC(model, direction="both")


summary(model)


par(mfrow=c(2,2))
plot(model)

z1=subset(Data,x2=="1991")
z2=subset(Data,x2=="1992")
z3=subset(Data,x2=="1993")
z4=subset(Data,x2=="1994")
z5=subset(Data,x2=="1995")
z6=subset(Data,x2=="1996")
z7=subset(Data,x2=="1997")
z8=subset(Data,x2=="1998")
z9=subset(Data,x2=="1999")
z10=subset(Data,x2=="2000")
k=1:12
plot(k,z1$y,main="Amount of bill in dollars",ylab="dollar",xlab="month",col=2)
boxplot(z1$y,z2$y,z4$y)
