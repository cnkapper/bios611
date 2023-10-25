library(tidyverse)
df <- readr::read_csv("~/work/medstudentdata.csv")


plot <- ggplot(data = df, mapping = aes(group = year, y = mbi_ex)) + geom_boxplot() + 
  labs(x = "Year", y = "Exhaustion Score", 
       title = "Distribution of Exhaustion Scores for Each Year")

ggsave(filename = "kapper_figure1.png", plot)