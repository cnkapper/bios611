PHONY: clean

clean:
	rm -rf kapper_figure1.png
	rm -rf kapper_figure2.png
	rm -rf kapper_project.html

kapper_figure1.png: createfile1.R medstudentdata.csv
	Rscript createfile1.R
	
kapper_figure2.png: createfile2.R medstudentdata.csv
	Rscript createfile2.R
	
kapper_project.html: project.Rmd medstudentdata.csv kapper_figure1.png kapper_figure2.png
	Rscript -e 'rmarkdown::render("project.Rmd")'