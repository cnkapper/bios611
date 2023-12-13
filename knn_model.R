library(class)
df <- readr::read_csv("~/work/medstudentdata.csv")

set.seed(123)
train_ind <- sample(1:nrow(df), 0.9 * nrow(df))
train <- df[train_ind, c(3, 12:20)]
test <- df[-train_ind, c(3, 12:20)]
preds <- knn(train = train, test = test, cl = train$year, k = 6)
set.seed(NULL)

tab <- table(preds, test$year)
mean(preds == test$year)

write.csv(tab, file = "knn_matrix.csv")
