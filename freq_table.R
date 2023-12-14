#frequency table of sex and year variables 
df <- readr::read_csv("~/work/medstudentdata.csv", show_col_types = F)

tab <- table(df$sex, df$year)

write.csv(tab, file = "year_sex_table.csv")