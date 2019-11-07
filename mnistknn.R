load("mnist/mnist.Rdata")
par(mfrow=c(3,3))
# reduction des data pour accélérer l'algo
sample.size <- 1000
sample <- sample.int(70000, sample.size)
data <- mnist[sample,]
# Séparation 80/20
data.train <- head(data, sample.size * 0.8)
data.test <- tail(data, sample.size * 0.2)

#k-NN
library("class")
model.1 <- knn(data.train, data.test, data.train$Label, k=1)
precision.1 <- sum(data.test$Label == model.1)/sample.size
print(precision.1)

model.3 <- knn(data.train, data.test, data.train$Label, k=3)
precision.3 <- sum(data.test$Label == model.3)/sample.size
print(precision.3)

precisions <- vector()
bestk = 0
bestprecision = 0
for(i in 2:10) {
  model <- knn(data.train, data.test, data.train$Label, k=i)
  precision <- sum(data.test$Label == model)/length(model)
  print(precision)
  if(precision > bestprecision) {
    bestprecision = precision
    bestk = i
  }
  precisions <- c(precisions, precision)
}
print(bestk)

model <- knn(data.train, data.test, data.train$Label, k=bestk)
precision <- sum(data.test$Label == model)/length(model)

data.test.bad = data.test[data.test$Label != model,]
par(mfrow=c(3,3))
for(i in 1:9) {
  show_digit(data.test.bad, i)
}
print(data.test.bad$Label[1:9])
print(model[1:9])

confusion_matrix=table(model,data.test$Label)
print(confusion_matrix)

par(mfrow=c(1,1))

# Exemple de prédiction
print(model[1])





