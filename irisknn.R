iris <- read.csv("iris/iris.csv",stringsAsFactors = FALSE,na.strings=c(NA,"-"))
print(head(iris))

# reduction des data pour accélérer l'algo
sample.size <- 150
random <- runif(sample.size) # Randam Uniform
sample <- iris[order(random),]

# Normalisation
normal <- function(x) (
  return( ((x - min(x)) /(max(x)-min(x))) )
)
normal(1:5)
# La colonne 5 est le Label
data <- as.data.frame(lapply(sample[,-5], normal))
print(head(data))

# Séparation 130+20
data.train <- data[1:130,]
data.test <- data[131:150,]
data.train.label <- sample[1:130,5]
data.test.label <- sample[131:150,5]

#k-NN
library("class")
model <- knn(data.train, data.test, data.train.label, k=13)

confusion_matrix=table(model,data.test.label)
print(confusion_matrix)

par(mfrow=c(1,1))






