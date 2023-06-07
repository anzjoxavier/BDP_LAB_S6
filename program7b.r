#fit logistic regression model
model <- glm(vs ~ hp, data=mtcars, family=binomial)

#define new data frame that contains predictor variable
newdata <- data.frame(hp=seq(min(mtcars$hp), max(mtcars$hp),len=500))

newdata$vs = predict(model, newdata, type="response")
plot(vs ~ hp, data=mtcars, col="steelblue")
lines(vs ~ hp, newdata, lwd=2)
print(head(mtcars))
a <- data.frame(hp=59)
result <-  predict(model,a)
print(paste("the value for vs when hp=59 is:",result))