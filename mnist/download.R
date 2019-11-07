# fetch the data set from the MNIST website
mnist <- download_mnist()

# view the fifth digit
show_digit(mnist, 5)

# first 60,000 instances are the training set
mnist_train <- head(mnist, 60000)
# the remaining 10,000 are the test set
mnist_test <- tail(mnist, 10000)

# PCA on 1000 random training examples
mnist_r1000 <- mnist_train[sample(nrow(mnist_train), 1000), ]

pca <- prcomp(mnist_r1000[, 1:784], retx = TRUE, .rank = 2)
# plot the scores of the first two components
plot(pca$x[, 1:2], type = 'n')
text(pca$x[, 1:2], labels = mnist_r1000$Label, cex = 0.5,
  col = rainbow(length(levels(mnist_r1000$Label)))[mnist_r1000$Label])

# save data set to disk
save(mnist, file = "mnist/mnist.Rda")