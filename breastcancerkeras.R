library(tensorflow)
library(kerasR)
tf_train <- read.csv("breastcancer/BreastCancer.csv")
tf_test <- read.csv("breastcancer/BreastCancer.csv")

X_train = as.matrix(tf_train[,2:10])
X_test = as.matrix(tf_test[,2:10])
y_train = as.matrix(tf_train[,11])
y_test = as.matrix(tf_test[,11])

idx = which(y_train=="benign"); y_train[idx]=0; y_train[-idx]=1; y_train=as.integer(y_train)
idx = which(y_test=="benign"); y_test[idx]=0; y_test[-idx]=1; y_test=as.integer(y_test)

#Y_train <- to_categorical(y_train,2) # Bug Python 3.6.6

n_units = 512 

mod <- Sequential()
mod$add(Dense(units = n_units, input_shape = dim(X_train)[2]))
mod$add(LeakyReLU())
mod$add(Dropout(0.25))

mod$add(Dense(units = n_units))
mod$add(LeakyReLU())
mod$add(Dropout(0.25))

mod$add(Dense(units = n_units))
mod$add(LeakyReLU())
mod$add(Dropout(0.25))

mod$add(Dense(units = n_units))
mod$add(LeakyReLU())
mod$add(Dropout(0.25))

mod$add(Dense(units = n_units))
mod$add(LeakyReLU())
mod$add(Dropout(0.25))

mod$add(Dense(2))
mod$add(Activation("softmax"))

#keras_compile(mod, loss = 'categorical_crossentropy', optimizer = RMSprop())
keras_compile(mod, optimizer = RMSprop())