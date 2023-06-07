df1 = read.table("/home/dalab13/anz13/data7.txt", sep=" ", header = TRUE)
palindrome = function(row) {
  wordlist = strsplit(row, NULL)[[1]]
  revword = rev(wordlist)
  
  if (identical(wordlist,revword)) {
    print(row)
    cat(row, file = "/home/dalab13/anz13/output.txt", sep = "\n", append = TRUE)
    
  }
}

apply(df1,1,palindrome)

