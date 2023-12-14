#distribution of student ages (wrt job variable)
library(tidyverse)
df <- readr::read_csv("~/work/medstudentdata.csv")

plot <- ggplot(data = df, mapping = aes(group = job, x = age)) + geom_bar() + 
  facet_grid(cols = vars(job)) + 
  labs(title = "Distribution of Ages for Students With and Without Jobs")

ggsave(filename = "kapper_figure2.png", plot)