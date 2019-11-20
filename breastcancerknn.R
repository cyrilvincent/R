library("class")

wdbc <- read.csv('breastcancer/wdbc.data', stringsAsFactors = FALSE)
wdbc <- wdbc[-1]

lapply(wdbc[2:ncol(wdbc)], function(x) { (x - mean(x)) / sd(x) })

wdbcTraining <- wdbc[1:427, 2:ncol(wdbc) ]
wdbcTest <- wdbc[428:569, 2:ncol(wdbc) ]
wdbcTrainingLabels <- wdbc[1:427, 1]
wdbcTestLabels <- wdbc[428:569, 1]

print(head(wdbcTest))

k <- 9
model <- knn(train = wdbcTraining,
                           test = wdbcTest,
                           cl = wdbcTrainingLabels,
                           k)

confusion_matrix=table(model,wdbcTestLabels)
print(confusion_matrix)


