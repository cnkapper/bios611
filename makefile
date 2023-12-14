PHONY: clean

clean:
	rm -rf age_dist.png
	rm -rf year_freq.png
	rm -rf kapper_figure2.png
	rm -rf year_sex_table.csv
	rm -rf cor_plot.png
	rm -rf knn_matrix.csv
	rm -rf knn_new.csv
	rm -rf log_res.csv
	rm -rf kapper_project.html


kapper_figure2.png: createfile2.R medstudentdata.csv
	Rscript createfile2.R
	
age_dist.png: distributions.R medstudentdata.csv
	Rscript distributions.R
	
year_freq.png: frequency_year.R medstudentdata.csv
	Rscript frequency_year.R
	
year_sex_table.csv: freq_table.R medstudentdata.csv
	Rscript freq_table.R
	
cor_plot.png: correlations.R medstudentdata.csv
	Rscript correlations.R
	
knn_matrix.csv: knn_model.R medstudentdata.csv
	Rscript knn_model.R
	
knn_new.csv: knn_model2.R medstudentdata.csv
	Rscript knn_model2.R
	
log_res.csv: logisticmodel.R medstudentdata.csv
	Rscript logisticmodel.R
	
kapper_project.html: project.Rmd medstudentdata.csv kapper_figure2.png age_dist.png year_freq.png year_sex_table.csv cor_plot.png knn_matrix.csv knn_new.csv log_res.csv
	Rscript -e 'rmarkdown::render("project.Rmd")'