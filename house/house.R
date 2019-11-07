print("Read CSV")
house <- read.csv("house/house.csv",stringsAsFactors = FALSE,na.strings=c(NA,"-"))
print(dim(house))
loyers = as.vector(house$loyer)
surfaces = as.vector(house$surface)
save.image("house/house.RData")
print("Saved")

      