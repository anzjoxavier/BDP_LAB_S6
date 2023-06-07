library(readxl)

age<-c(45,30,37,58,60,40,48,75,65)
home<-c(1,1,1,0,0,1,1,0,1)
data1<-data.frame(age,home)
print(data1)
logistic_model <- glm(home~age,data=data1, family=binomial)
print(summary(logistic_model))
plot(home~age, data=data1, col="steelblue")
lines(home~age, data1, lwd=2)
age<-c(32,70)
test_reg<-data.frame(age)
predict_reg <- predict(logistic_model, 
                       test_reg, type = "response")
predict_reg <- ifelse(predict_reg >0.5, 1, 0)

print(table(age, predict_reg))




