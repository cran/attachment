## ----setuprmd, include = FALSE------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(attachment)

## ---- eval=FALSE--------------------------------------------------------------
#  att_amend_desc()

## ---- eval=FALSE--------------------------------------------------------------
#  # bookdown Imports are in Rmds
#  imports <- c("bookdown", attachment::att_from_rmds("."))
#  attachment::att_to_desc_from_is(path.d = "DESCRIPTION",
#                                  imports = imports, suggests = NULL)

## ---- eval=FALSE--------------------------------------------------------------
#  att_from_namespace()

## ---- eval=FALSE--------------------------------------------------------------
#  att_from_rscripts()

## ---- eval=FALSE--------------------------------------------------------------
#  att_from_rmds()

## ---- eval=FALSE--------------------------------------------------------------
#  create_dependencies_file()

## ---- eval=FALSE--------------------------------------------------------------
#  # No Remotes ----
#  # remotes::install_github("ThinkR-open/fcuk")
#  # Attachments ----
#  to_install <- c("covr", "desc", "devtools", "glue", "knitr", "magrittr", "rmarkdown", "stats", "stringr", "testthat", "utils")
#  for (i in to_install) {
#    message(paste("looking for ", i))
#    if (!requireNamespace(i)) {
#      message(paste("     installing", i))
#      install.packages(i)
#    }
#  }

## ---- eval=TRUE---------------------------------------------------------------
dummypackage <- system.file("dummypackage", package = "attachment")

att_from_rscripts(path = file.path(dummypackage, "R"))
att_from_rmds(path = file.path(dummypackage, "vignettes"))

