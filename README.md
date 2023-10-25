Hi, this is my 611 Data Science Project. More to come.

This is the Project Skeleton, pushed on 10/25/23. The data set, `medstudentdata.csv`, contains information about Swiss medical students across all six years of school, including their scores on assessments for exhaustion, burnout, and depression. Below, we create two figures,the first comparing the distribution of academic exhaustion scores for students in each year of medical school, and the second comparing the distribution of ages of medical students with and without jobs.

Getting Started
===============

Build the docker image by typing:
```
docker build . -t ckapper611
```

And then start an RStudio by typing:

```
docker run -v $(pwd):/home/rstudio/project -p 8787:8787 -e PASSWORD=<some-password>
```

Once the Rstudio is running connect to it by visiting
https://localhost:8787 in your browser. 

To build the final report, visit the terminal in RStudio, change into the `work` directory and `make` the images:

```
cd work
make kapper_figure1.png
make kapper_figure2.png
```
