Hi, this is my 611 Data Science Project. More to come.

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

To build the final report, visit the terminal in RStudio and type

```
make report.pdf
```
