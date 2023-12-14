#creates second knn model, "upper" as dependent
library(class)
df <- readr::read_csv("~/work/medstudentdata.csv")
df$upper <- ifelse(df$year > 3, 1, 0)

set.seed(123)
train_ind <- sample(1:nrow(df), 0.9 * nrow(df))
train <- df[train_ind, 12:21]
test <- df[-train_ind, 12:21]
preds <- knn(train = train, test = test, cl = train$upper, k = 6)
set.seed(NULL)

tab <- table(preds, test$upper)
mean(preds == test$upper)

write.csv(tab, file = "knn_new.csv")