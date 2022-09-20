#!/bin/bash

# exit if any step fails
set -e

# libicu-dev is for stringi

apt update && \
    apt -y install \
        git \
        libicu-dev \
        littler \
        r-base-core \
        r-cran-bookdown \
        r-cran-broom \
        r-cran-callr \
        r-cran-classint \
        r-cran-cli \
        r-cran-colorspace \
        r-cran-crayon \
        r-cran-dbi \
        r-cran-desc \
        r-cran-devtools \
        r-cran-dplyr \
        r-cran-e1071 \
        r-cran-evaluate \
        r-cran-fansi \
        r-cran-farver \
        r-cran-furrr \
        r-cran-future \
        r-cran-future.apply \
        r-cran-generics \
        r-cran-ggplot2 \
        r-cran-ggplot2 \
        r-cran-globals \
        r-cran-glue \
        r-cran-googlesheets4 \
        r-cran-gtable \
        r-cran-hms \
        r-cran-htmltools \
        r-cran-httpuv \
        r-cran-ipred \
        r-cran-jquerylib \
        r-cran-knitr \
        r-cran-lhs \
        r-cran-lifecycle \
        r-cran-littler \
        r-cran-magrittr \
        r-cran-maptools \
        r-cran-modeldata \
        r-cran-openssl \
        r-cran-parallelly \
        r-cran-patchwork \
        r-cran-pillar \
        r-cran-pkgload \
        r-cran-processx \
        r-cran-progressr \
        r-cran-proxy \
        r-cran-ps \
        r-cran-rcolorbrewer \
        r-cran-rcpp \
        r-cran-rcurl \
        r-cran-readr \
        r-cran-recipes \
        r-cran-rgdal \
        r-cran-rlang \
        r-cran-rmarkdown \
        r-cran-rprojroot \
        r-cran-rsample \
        r-cran-rvest \
        r-cran-s2 \
        r-cran-sass \
        r-cran-scales \
        r-cran-sf \
        r-cran-snakecase \
        r-cran-sp \
        r-cran-stringi \
        r-cran-stringr \
        r-cran-testthat \
        r-cran-tibble \
        r-cran-tidyr \
        r-cran-timedate \
        r-cran-tinytex \
        r-cran-tzdb \
        r-cran-vctrs \
        r-cran-viridislite \
        r-cran-vroom \
        r-cran-waldo \
        r-cran-xfun \
        ;

echo 'options(repos = c(CRAN = "https://packagemanager.rstudio.com/all/__linux__/focal/latest"))' >> /etc/R/Rprofile.site
echo 'options(HTTPUserAgent = "RStudio Server (2021.9.1.372); R (4.1.2 x86_64-pc-linux-gnu x86_64 linux-gnu)")' >> /etc/R/Rprofile.site

r /autograder/source/stat20-init.r
