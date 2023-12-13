library(tidyverse)

df <- readr::read_csv("~/work/medstudentdata.csv", show_col_types = F)

plot <- ggplot(data = df, mapping = aes(x = as.factor(year))) + geom_bar() + 
  labs(x = "Year", title = "Frequencies of Student Years")

ggsave(filename = "year_freq.png", plot)