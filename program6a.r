library("dplyr")
my_data = read.table("/home/dalab13/anz13/data5.txt", sep="", header = TRUE)
print(my_data)
for(i in my_data){
  if(is.numeric(i)){
    c=shapiro.test(i)
    print(c)
    if(c[2]>0.05){
      print("Data is normally distributed.")
    }else{
      print("Data is not normally distributed.")
    }
  }
}