library(tidyverse)

df <- readr::read_csv("~/work/medstudentdata.csv", show_col_types = F)

plot <- ggplot(data = df, mapping = aes(x = age)) + geom_histogram() + 
  labs(title = "Distribution of Student Ages")

ggsave(filename = "age_dist.png", plot)

