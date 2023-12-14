#creates logistic regression model and output table, calculates accuracy
library(tidyverse)

df <- readr::read_csv("~/work/medstudentdata.csv", show_col_types = F)
df <- df[, -1] %>% mutate(upper = ifelse(year %in% c(1,2,3), 0, 1))

set.seed(123)
train_ind <- sample(1:nrow(df), 0.9 * nrow(df))
train <- df[train_ind, 7:20]
test <- df[-train_ind, 7:20]
set.seed(NULL)

model <- glm(upper ~ ., data = train, family = binomial)

summary(model)

probabilities <- model %>% predict(test, type = "response")
predicted.classes <- ifelse(probabilities > 0.5, 1, 0)

mean(predicted.classes == test$upper)

tab <- table(predicted.classes, test$upper)

write.csv(tab, file = "log_res.csv")
