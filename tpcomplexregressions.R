objects <- load("polynomial/polynomial.RData")
plot(x, y)
reg = lm(y ~ x)
print(reg)
print(cor(y, x)) # 26% Mauvais
abline(reg = reg)
reg = lm(y ~ poly(x, 2))
print(summary(reg)) # 11% Mauvais
points(x, fitted(reg), col='red', pch=20)
for (degree in 3:6) {
  reg = lm(y ~ poly(x, degree))
  print(summary(reg)) # 3:29% 4:90% 5:91% 6:99%
  points(x, fitted(reg), col='blue', pch=20)
}

reg = lm(y ~ poly(x, 6))
print(summary(reg)) # 99% Excellent
points(x, fitted(reg), col='green', pch=20)

reg = lm(y ~ sin(x))
print(summary(reg)) # 75% Bon
points(x, fitted(reg), col='black', pch=20)

reg = lm(y ~ x * sin(x))
print(summary(reg)) # 100% Parfait
points(x, fitted(reg), col='red', pch=20)


