FROM rocker/verse

RUN apt update && apt install -y <package-name> && rm -rf /var/lib/apt/lists/*

RUN yes|unminimize