library(randomForest)

wdbc <- read.csv('breastcancer/wdbc.data', stringsAsFactors = FALSE)
wdbc <- wdbc[-1]

lapply(wdbc[2:11], function(x) { (x - mean(x)) / sd(x) })

wdbcTraining <- wdbc[1:427, 2:ncol(wdbc)]
wdbcTest <- wdbc[428:569, 2:ncol(wdbc)]
wdbcTrainingLabels <- wdbc[1:427, 1]
wdbcTestLabels <- wdbc[428:569, 1]

print(head(wdbcTest))

model <- randomForest(wdbcTraining,factor(wdbcTrainingLabels),wdbcTest,factor(wdbcTestLabels),ntree=100, keep.forest = T)
print(model)
pred = predict(model, wdbcTest)
varImpPlot(model)


