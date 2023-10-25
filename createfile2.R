library(tidyverse)
df <- readr::read_csv("~/bios611/project/medstudentdata.csv")

ggplot(data = df, mapping = aes(group = job, x = age)) + geom_bar() + 
  facet_grid(cols = vars(job)) + 
  labs(title = "Distribution of Ages for Students With and Without Jobs")

ggsave(filename = "kapper_figure2.png")