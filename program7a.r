
#linear regression
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

rel<-lm(y~x)
a<-data.frame(x=c(162,179))
print(predict(rel,a))

plot(y,x,col = "blue",main = "Height & Weight",
     abline(lm(x~y)),cex = 2,pch =16,xlab = "Weight in Kg",ylab = "Height in cm")
