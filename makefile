PHONY: clean

clean:
	rm -rf kapper_figure1.png
	rm -rf kapper_figure2.png

kapper_figure1.png: createfile1.R medstudentdata.csv
	Rscript createfile1.R
	
kapper_figure2.png: createfile2.R medstudentdata.csv
	Rscript createfile2.R