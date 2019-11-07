objets <- load("house/house.RData")

print(head(house))
model = lm(loyer ~ surface, data=house)
print(model)

surface_to_predict <- data.frame(surface = c(50,75,100))
print(surface_to_predict)
prediction = predict(model, newdata=surface_to_predict)
print(prediction)
prediction = predict(model, newdata=surface_to_predict,interval="confidence") #95%
print(prediction)

