library(class)
df <- readr::read_csv("~/work/medstudentdata.csv")

set.seed(123)
train_ind <- sample(1:nrow(df), 0.9 * nrow(df))
train <- df[train_ind, ]
test <- df[-train_ind, ]
preds <- knn(train = train, test = test, cl = train$year, k = 5)
set.seed(NULL)

table(preds, test$year)
mean(preds == test$year)

#make table export for project