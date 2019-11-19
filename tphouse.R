#1 Moyenne, et, mediane, quartile de loyers et surfaces
#2 Calculer le vecteur (loyers par m²) + moyenne, et, mediane, quartile
#3 Enlever les data en dehors de 3*ET + moyenne, et, mediane, quantile

print(summary(loyers))
print(sd(loyers))

print(summary(surfaces))
print(sd(surfaces))

loyersm2 = loyers /  surfaces
print(head(loyersm2))
print(summary(loyersm2))
print(sd(loyersm2))

loyersm2filter = loyersm2[abs(loyersm2 - mean(loyersm2)) < 3 * sd(loyersm2)]
print(head(loyersm2filter))
print(summary(loyersm2filter))
print(sd(loyersm2filter))

plot(surfaces, loyers, pch=20)


