df = read.table("/home/dalab13/anz13/data.txt", sep=",", header = FALSE)
cat('The input dataframe is :')
print(df)

df = sapply(df,as.numeric)
x = nrow(df)
i = 0
while (i <= x) {
  j = i + 1
  while(j <= x) {
    if (setequal(df[j, ], df[i, ])) {
      df = df[-j,]
      x = x - 1
    }
    else {
      j = j + 1
    }
  }
  i = i + 1
}

cat('The dataframe after removing duplicate rows:')
print(df)
rs = rowSums(df)
cat("sum of rows:")
print(rs)
maxrs = max(rs)
cat('The maximum row sum is : ', maxrs)
cat('\nThe factorial of max row sum is : ', factorial(maxrs))

