Hi, this is my BIOS 611 Data Science Project.

This is the Final Project, pushed on 12/13/23. The data set, `medstudentdata.csv`, contains information about Swiss medical students across all six years of medical school, including important demographic information, their employment and marital statuses, and their overall satisfaction with their health and their job.

Also included in the data set are the students' scores on several empathy tests, the Center for Epidemiologic Studies Depression scale, the State-Trait anxiety inventory scale, and exhaustion, cynicism, and professional efficacy scores from the Maslach Burnout Inventory test. In total, 886 students completed all of the exams are are included in the data set.

In the project below, I explore the variables and their associations, and attempt to predict the year of each student based on their scores on the empathy, depression, anxiety, and burnout tests, hoping to find an association between these measures and the students' year in school and their mental health. 

Getting Started
===============
Clone this repository, and `cd` into the directory from your command line. 

Build the docker image by typing:
```
docker build . -t ckapper611
```

And then start an RStudio by typing (substitute <some-password> for the password of your choice):

```
docker run -v $(pwd):/home/rstudio/project -p 8787:8787 -e PASSWORD=<some-password>
```

Once the Rstudio is running connect to it by visiting https://localhost:8787 in your browser. Use username "rstudio" and the password you used in the `docker run` command.

To build the final report, visit the terminal in RStudio, and change into the `work` directory:
```
cd work
```

Set the working directory to `work` using the following code in the Console:
```
setwd("~/work")
```

Finally, `make` the report:
```
make kapper_project.html
```