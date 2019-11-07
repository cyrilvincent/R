load("mnist/mnist.Rdata")
par(mfrow=c(3,3))
sample = sample.int(70000, 9)
data = mnist[sample,]
for(i in 1:9) {
  show_digit(data, i)
}
print(data$Label)
par(mfrow=c(1,1))

