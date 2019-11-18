#1 Faire la fonction isEven(x) qui renvoie TRUE si x est pair
#2 Faire la fonction isPrime(x) qui renvoie TRUE si x est premier
#3 Afficher les nombres premiers < 1000

isEven = function(x) {
  return(x %% 2 == 0)
}

isPrime = function(x) {
  res = TRUE
  if (x < 2) {
    res = FALSE
  } else {
    for (i in 2:(sqrt(x) + 1)) {
      if (x %% i == 0) {
        res = FALSE
        break
      }
    }
  }
  return(res)
}

displayPrimes = function(nb = 1000) {
  for (i in 1:nb) {
    if (isPrime(i)) {
      print(i)
    }
  }
}

displayEven = function(nb = 1000) {
  for (i in 1:nb) {
    if (isven(i)) {
      print(i)
    }
  }
}

displayByFn = function(fn, nb = 1000) {
  for (i in 1:nb) {
    if (fn(i)) {
      print(i)
    }
  }
}



print(isEven(8))
print(isEven(7))
print(isPrime(8))
print(isPrime(7))
displayPrimes()
displayByFn(isPrime, 1000)
displayByFn(function(x) x %% 3 == 0, 1000)
