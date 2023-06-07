
print('Enter the data:')
name <- strsplit(readline('Enter the names : '), ' ')
name <- unlist(name)
age <- strsplit(readline('Enter the ages: '), ' ')
age <- as.numeric(unlist(age))
height <- strsplit(readline('Enter the heights: '), ' ')
height <- as.numeric(unlist(height))
weight <- strsplit(readline('Enter the weights: '), ' ')
weight <- as.numeric(unlist(weight))

df <- data.frame(name = name,age = age,height = height,weight = weight)

num_cols <- unlist(lapply(df, is.numeric))
ndf <- df[, num_cols]


modecalc<-
  function(v) 
{
  return(names(sort(-table(v)))[1])
}

ndfcols <- c()
for (col in colnames(ndf)) {
  
  ndfcols <- c(ndfcols, col)
  
  cat('\n\n\nColumn Name :', col, 'Results of statistical operations : ')
  cat('\nMean:', mean(ndf[[col]]))
  cat('\nMedian:', median(ndf[[col]]))
  cat('\nMode:', modecalc(ndf[[col]]))
  cat('\nStandard deviation:', sd(ndf[[col]]))
  cat('\nFive number summary :', fivenum(ndf[[col]]))
  cat('\nBOX PLOT ')
  
}
print(ndfcols)
boxplot(df[,ndfcols])
cat('\n\nCorrelation coefficient of Numeric Attributes is : \n')
print(cor(ndf[, ndfcols]))
