x = seq(0,10,0.1)
y = x * sin(x)

plot(x, y)

save(x,y,file="polynomial/polynomial.RData")
