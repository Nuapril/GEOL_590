##Learning to Write packages##

##Librabies needed to write packages according to R - packages
library(devtools)
library(roxygen2)
library(testthat)
library(knitr)

#--------------------------------------------------------------------
#foo() refers to functions
#bar refers to variables and function parameters
#baz/ refers to paths

#-------------------------------------------------------------------
#loading package?
#devtools::install_github(task_09)

# Create a new package in working directory
# must have unique name starting with letter, can have numbers, never have '.' at the end
devtools::create("./task9r")
 