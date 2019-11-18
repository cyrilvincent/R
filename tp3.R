v = c(7,3,5,9,99,-2,10,20,0,15)
print(v)

#1 min(v) renvoie le min
#2 sum(v) renvoie la somme
#3 displayPrimes(v) affiche les nombres premiers du vecteurs
#Bonus displayByFn(v)  ....

min = function(v) {
  res = v[1]
  for (i in v) {
    if (i < res) {
      res = i
    }
  }
  return(res)
}

sum = function(v) {
  res = 0
  for (i in v) {
    res = res + i
  }
  return(res)
}

displayByFn = function(v, fn) {
  for (i in v) {
    if(fn(i)) {
      print(i)
    }
  }
}

filterByFn = function(v, fn) {
  res = NULL
  for (i in v) {
    if (fn(i)) {
      res = c(res, i)
    }
  }
  return(res)
}

mapByFn = function(v, fn) {
  res = NULL
  for (i in v) {
    res = c(res, fn(i))
  }
  return(res)
}

print(min(v))
print(sum(v))
displayByFn(v, isPrime)
print(filterByFn(v, isPrime))
print(mapByFn(v, function(x) x + 1))
print(mapByFn(filterByFn(v, isPrime), function(x) x + 1))
print(mapByFn(v, function(x) x %% 3 == 0))
