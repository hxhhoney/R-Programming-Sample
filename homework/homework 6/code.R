library(base)
data(cars)
x=cars$speed
y=cars$dist
model=lm(y~x)
model2<-lm(y~-1+x) # No intercept model
coef(model)
coef(model2)

xnew=21
xnew=as.data.frame(xnew)
colnames(xnew)<-"x"
predict(model, xnew, interval="pred")

ozone=read.table("http://www.agrocampus-ouest.fr/igagrocampus-ouest.fr/math/RforStat/ozone.txt", header=T)
model=lm(maxO3~T12, data=ozone)
xnew<-20
xnew=as.data.frame(xnew)
colnames(xnew)<-"T12"
predict(model, xnew, interval="pred")



x=mammals$body
y=mammals$brain
model=lm(y~x)
residuals<-residuals(model)
plot(residuals)
t.text(,)

max(residuals)


x=0:9
y=c(98,135,162,178,221,232,283,300,374,395)
plot(x,y)
model=lm(y~x)
model
abline(model)

library(MASS)
b=boxcox(model)
b

residuals<-residuals(model)
 fit=fitted(model)
data=data.frame(residuals,fit)

plot(data$fit,data$resduals,main="Fitted VS Residual plot",xlab="fit",ylab="residual")

model2=lm(y~-1+x)




x=log(mammals$brain)
y=log(mammals$body)

plot(x,y,main="logBrain VS logBody plot",xlmab="logbrain",ylab="logbody")

abline(model)
