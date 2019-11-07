print("Read CSV")
mesures <- read.csv("mesures/mesures.csv",stringsAsFactors = FALSE,na.strings=c(NA,"-"))
print(head(mesures))

      