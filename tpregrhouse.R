print(cor(loyers, surfaces))
reg = lm(loyers ~ surfaces)
print(reg)
print(summary(reg))

res <- residuals(reg,type="response")
EQM <- mean(res^2)

filter <- surfaces < 300 
surfacesfilter <- surfaces[filter]
loyersfilter <- loyers[filter]
slope = coefficients(reg)[2]
intercept = coefficients(reg)[1]
filter <- abs((slope * surfacesfilter + intercept) - loyersfilter) < (3 * sqrt(EQM))
surfacesfilter <- surfacesfilter[filter]
loyersfilter <- loyersfilter[filter]
layout(matrix(1:1,1,1))
plot(surfacesfilter, loyersfilter, pch=20)

reg = lm(loyersfilter ~ surfacesfilter)
print(reg)
abline(reg = reg, col="blue")
print(summary(reg))

res <- residuals(reg,type="response")
EQM <- mean(res^2)
EQM_M2 <- EQM / mean(surfacesfilter)
print(sqrt(EQM_M2))

print(cor(loyersfilter, surfacesfilter))

reg = lm(loyers ~ poly(surfaces, 2))
print(reg)
print(summary(reg))
points(surfaces, fitted(reg), pch=20, col="red")

reg = lm(loyers ~ poly(surfaces, 3))
print(summary(reg))
points(surfaces, fitted(reg), pch=20, col="green")
