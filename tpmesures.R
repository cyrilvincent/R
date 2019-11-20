print("Read CSV")
mesures <- read.csv("mesures/mesures.csv",stringsAsFactors = FALSE,na.strings=c(NA,"-"))
print(head(mesures))

plot(mesures$T, mesures$VM, pch=20, col="red")
points(mesures$T, mesures$VT, pch=20)

errors = abs(mesures$VM - mesures$VT) > 1
print(mesures[errors,])

print(toJSON(mesures))

      