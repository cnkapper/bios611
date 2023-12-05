FROM rocker/rstudio

RUN apt update && apt install -y man-db && rm -rf /var/lib/apt/lists/*

RUN yes|unminimize

# Install system dependencies
RUN apt-get update && \
    apt-get install -y software-properties-common

RUN R -e "install.packages(\"tinytex\")"
RUN R -e "tinytex::install_tinytex()"

RUN R -e "install.packages(\"readr\")"
RUN R -e "install.packages(\"tidyverse\")"
RUN R -e "install.packages(\"rmarkdown\")"

RUN apt install build-essential -y --no-install-recommends
RUN apt-get install -y --no-install-recommends libxt6