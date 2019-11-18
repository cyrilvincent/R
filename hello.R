# 1 Saisir un chiffre et dire s'il est pair ou impair %%
# 2 Saisir un chiffre et dire s'il est premier ou non
#   Un nb est premier s'il est divisible par 1 ET lui même

print("Saisir un nombre")
x = scan(nmax = 1)

if (x %% 2 == 0) {
  print(sprintf("%d est pair", x))
} else {
  print(sprintf("%d est impair", x))
}

isprime = TRUE

if (x < 2) {
  isprime = FALSE
} else {
  for (i in 2:(sqrt(x) + 1)) {
    if (x %% i == 0) {
      isprime = FALSE
      break
    }
  }
}

ifelse(isprime, print(sprintf("%d est premier",x)), print(sprintf("%d n'est pas premier",x)))



