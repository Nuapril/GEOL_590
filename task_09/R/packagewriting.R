#This package requires the following libraries and these libraries will be installed with the package if not already available.
devtools::use_package("dplyr")

#This creates a documentation workflow
devtools::document()

#This creates a vignette workflow
devtools::use_vignette("geomean")

#to draft the vignette
vignette/geomean.Rmd

#This creates a test workflow to test your functions
devtools::use_testthat()

#test package with
devtools::test()

#This creates tests
#I want to create a test that checks that the function is finding the mean, that the addition and division is working properly
library(stats)
library(testthat)
context("Arithmetic")

test_that("addition works", {
  expect_equal(1 + 1, 2)
  expect_equal(1 + 2, 3)
  expect_equal(1 + 3, 4)
})

test_that("Division works", {
  expect_equal(1 / 1, 1)
  expect_equal(10 / 2, 5)
  expect_equal(100 / 10, 10)
})
