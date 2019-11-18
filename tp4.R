# Créer un vecteur de number
v = c(7,3,5,9,99,-2,10,20,0,15)

#1 Filtrer facilement les number > 0
#2 Filtrer les nombres pairs
#3 Ajouter 1
#3bis Ajouter le vecteur 1 2
#4 Afficher tan
#5 Trier
#6 Charger taille/taille.RData, lire taille.txt et afficher les 4 vecteurs

print(v > 0)
print(v[v > 0])
print(v[v %% 2 == 0])
print(v + 1)
print(v + c(1,2))
print(tan(v))
print(sort(v))
load("taille/taille.RData")
print(tailleG)
print(performanceG)
print(tailleG["Vincent"])
print(performanceG["Vincent"])
