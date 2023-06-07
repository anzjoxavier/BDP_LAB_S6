data(iris)
print(head(iris))
clusters<-kmeans(iris[, c("Sepal.Length","Petal.Length")], centers=3)
plot(iris[, c("Sepal.Length","Petal.Length")],col=clusters$cluster)

print(clusters$cluster)