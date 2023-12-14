#creates correlation plot
library(psych)

df <- readr::read_csv("~/work/medstudentdata.csv", show_col_types = F)

png(file = "cor_plot.png")
corPlot(df[, 2:20])
dev.off()
