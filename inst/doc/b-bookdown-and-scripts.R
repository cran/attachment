## ----setuprmd, include = FALSE------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(attachment)

## ---- eval=FALSE--------------------------------------------------------------
#  # bookdown Imports are in Rmds
#  imports <- c("bookdown", attachment::att_from_rmds("."))
#  
#  attachment::att_to_desc_from_is(
#    path.d = "DESCRIPTION",
#    imports = imports, suggests = NULL,
#    must.exist = FALSE
#  )

## ---- eval=FALSE--------------------------------------------------------------
#  remotes::install_local()

## ----eval=FALSE---------------------------------------------------------------
#  attachment::att_to_desc_from_is(
#    path.d = "DESCRIPTION",
#    imports = imports, suggests = NULL,
#    must.exist = FALSE
#  ) %>%
#    set_remotes_to_desc()

## ---- eval=FALSE--------------------------------------------------------------
#  att_from_namespace()

## ---- eval=FALSE--------------------------------------------------------------
#  att_from_rscripts()

## ---- eval=FALSE--------------------------------------------------------------
#  att_from_rmds()

## ---- eval=TRUE---------------------------------------------------------------
dummypackage <- system.file("dummypackage", package = "attachment")

att_from_rmds(path = file.path(dummypackage, "vignettes"), inside_rmd = TRUE)

