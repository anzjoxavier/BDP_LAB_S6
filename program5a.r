df1 = read.table("/home/dalab13/anz13/data1.txt", sep=",", header = TRUE)
df2 = read.table("/home/dalab13/anz13/data2.txt", sep=",", header = TRUE)

print('The input datasets are: ')
print(df1)
print(df2)

df2 = merge(df1, df2, by='RollNo')
print(df2)