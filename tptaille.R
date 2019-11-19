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

print(summary(tailleG2_tri))
print(summary(performanceG2_tri))
print(summary(tailleF2_tri))
print(summary(performanceF2_tri))

perftailleG = performanceG2_tri / tailleG2_tri
perftailleF = performanceF2_tri / tailleF2_tri
print(perftailleG)
print(summary(perftailleG))
print(sd(perftailleG))
print(summary(perftailleF))
print(sd(perftailleF))
