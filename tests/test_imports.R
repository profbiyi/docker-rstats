context("import")

Library <- function(libname){
  print(libname)
  suppressPackageStartupMessages(library(libname, character.only=TRUE))
}

# Add packages to that list to ensure they are installed on the image
# and prevent future regression.
test_that("imports", {
  import_pkgs <- function() {
    Library("keras")
    print("Testing keras-python connection")
    m <- keras_model_sequential()
    Library("Rcpp")
    Library("ggrepel")
    Library("ggforce")
    Library("stringr")
    Library("plyr")
    Library("digest")
    Library("reshape2")
    Library("colorspace")
    Library("RColorBrewer")
    Library("scales")
    Library("labeling")
    Library("proto")
    Library("munsell")
    Library("gtable")
    Library("dichromat")
    Library("mime")
    Library("RCurl")
    Library("Rtsne")
    Library("bitops")
    Library("zoo")
    Library("knitr")
    Library("dplyr")
    Library("readr")
    Library("tidyr")
    Library("randomForest")
    Library("xgboost")
    Library("rstan")
    Library("prophet")
    Library("fftw")
    Library("seewave")
    Library("lightgbm")
    Library("fslr")
    Library("imager")
    Library("hrbrthemes")
  }

  # expect no error to be thrown
  expect_error(import_pkgs(), NA) 
})
