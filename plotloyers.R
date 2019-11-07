rm()
objets <- load("house/house.RData")
#plot(surfaces, loyers)

moyennes = loyers / surfaces
moyenne = mean(moyennes)

print(cor(loyers, surfaces))
reg = lm(loyers ~ surfaces)
print(reg)
#abline(reg = reg)

res <- residuals(reg,type="response")
EQM <- sqrt(sum(res^2)/length(res)) #On peut obtenir la même chose avec summary
print(EQM)
EQM_M2 <- EQM / mean(surfaces)

filter <- surfaces < 300 
surfaces <- surfaces[filter]
loyers <- loyers[filter]
filter <- (40.97 * surfaces - 283.38) < (3 * EQM)
surfaces <- surfaces[filter]
loyers <- loyers[filter]
plot(surfaces, loyers)

reg = lm(loyers ~ surfaces)
print(reg)
abline(reg = reg)

res <- residuals(reg,type="response")
EQM <- sqrt(sum(res^2)/length(res))
print(EQM)
EQM_M2 <- EQM / mean(surfaces)

print(cor.test(loyers, surfaces))

reg = lm(loyers ~ poly(surfaces, 2))
print(summary(reg))
points(surfaces, fitted(reg), pch=20)

reg = lm(loyers ~ poly(surfaces, 3))
print(summary(reg))
points(surfaces, fitted(reg), pch=20)
