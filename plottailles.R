objets <- load("taille/taille.RData")
print(tailleG)
print(tailleF)
communG <- intersect(names(tailleG), names(performanceG))
communF <- intersect(names(tailleF), names(performanceF))
print(length(communG))
print(length(communF))
tailleG2 <- tailleG[communG]
performanceG2 <- performanceG[communG]
tailleF2 <- tailleF[communF]
performanceF2 <- performanceF[communF]
print(tailleG2)
tailleG2_tri <- tailleG2[order(tailleG2)]
performanceG2_tri <- performanceG2[order(tailleG2)]
tailleF2_tri <- tailleF2[order(tailleF2)]
performanceF2_tri <- performanceF2[order(tailleF2)]
print(tailleG2_tri)
plot(tailleG2_tri, performanceG2_tri)
reg = lm(performanceG2 ~ tailleG2)
abline(reg = reg)
res <- residuals(reg,type="response")
EQM <- sqrt(sum(res^2)/length(res))