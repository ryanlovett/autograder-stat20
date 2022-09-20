#!/usr/bin/env Rscript

class_libs_install_version <- function(class_name, class_libs) {
  print(paste("Installing packages for", class_name))
  for (i in seq(1, length(class_libs), 2)) {
    installed_packages <- rownames(installed.packages())
    package_name = class_libs[i]
    version = class_libs[i+1]
    # Only install packages if they haven't already been installed!
    # devtools doesn't do that by default
    if (!package_name %in% installed_packages) {
      print(paste("Installing", package_name, version))
      devtools::install_version(package_name, version, quiet=TRUE)
    } else {
      # FIXME: This ignores version incompatibilities :'(
      print(paste("Not installing", package_name, " as it is already installed"))
    }
  }
  print(paste("Done installing packages for", class_name))
}

class_libs = c(
    "fivethirtyeight", "0.6.2",
    "gapminder", "0.3.0",
    "googlesheets4", "1.0.0",
    "infer", "1.0.0",
    "janitor", "2.1.0",
    "openintro", "2.2.0",
    "pagedown", "0.16",
    "palmerpenguins", "0.1.0",
    "patchwork", "1.1.1",
    "patchwork", "1.1.1",
    "showtext", "0.9-4",
    "swirl", "2.4.5",
    "tidycensus", "1.1",
    "tidymodels", "0.1.4",
    "tigris", "1.5",
    "unvotes", "0.3.0",
    "xaringanthemer", "0.4.1"
)


class_libs_install_version("Stat 20", class_libs)

devtools::install_github("mdbeckman/dcData", ref="56888a6")
devtools::install_github("hadley/emo@3f03b11")
devtools::install_github("andrewpbray/boxofdata@8afd934")
devtools::install_github("stat20/stat20data@d48bf73")
