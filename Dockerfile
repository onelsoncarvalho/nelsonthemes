FROM rocker/tidyverse:4.4.2

COPY .config* /home/rstudio/.config
COPY .Rprofile* /home/rstudio/

USER root

RUN chown -R rstudio:rstudio /home/rstudio

RUN apt-get update && apt-get install -y \
  imagemagick \
  libmagick++-dev \
  libmagickwand-dev \
  && rm -rf /var/lib/apt/lists/*

RUN install2.r --error --skipinstalled --deps TRUE \
  usethis \
  devtools \
  remotes \
  magick \
  hexSticker \
  && rm -rf /tmp/downloaded_packages/


WORKDIR /home/rstudio/nelsonthemes

EXPOSE 8787
