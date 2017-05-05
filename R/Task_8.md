Task 8
================

Write a funtion that fulfills the following criteria:
-----------------------------------------------------

-   It should be tidyverse compatible (i.e., the first argument must be a data frame)

-   It should add two arbitrary columns of the data frame (specified by the user) and put them in a new column of that data frame, with the name of the new column specified by the user

-   It should throw an informative warning if any invalid arguments are provided. Invalid arguments might include:

    -   The first argument is not a data frame

    -   Less than two valid columns are specified to add (e.g., one or both of the column names isn't in the supplied data frame)

    -   The columns specified are not numeric, and therefore can't be added - use tryCatch() for this

-   If the columns to add aren't valid but the new column name is, the function should create a column of NA values

``` r
#Libraries needed for this script --------------------------------------------
library(tidyverse)
```

    ## Loading tidyverse: ggplot2
    ## Loading tidyverse: tibble
    ## Loading tidyverse: tidyr
    ## Loading tidyverse: readr
    ## Loading tidyverse: purrr
    ## Loading tidyverse: dplyr

    ## Conflicts with tidy packages ----------------------------------------------

    ## filter(): dplyr, stats
    ## lag():    dplyr, stats

``` r
library(dplyr)

#This script accomplishes task 8 part I --------------------------------------

#This function uses 4 arguments, the first being the data frame, i, j, k being columns.
grades_add <- function(df, i, j, k, l) { 
  
  ## this checks the arguments for errors 
  
  #This creates a warning if first argument does not contain a dataframe 
  if(is.data.frame(df) != TRUE) {
    stop("Argument df is not a data frame")
    }
    
  
  
  if((is.vector(df[[i]])) != TRUE || (is.vector(df[[j]])) != TRUE || (is.vector(df[[k]])) != TRUE) {
    stop("column does not belong to data frame")
    }
  
  
  
  #checks that columns are numeric
  tryCatch(
    if(!is.numeric(df[[i]]) | !is.numeric(df[[j]]) | !is.numeric(df[[k]])) {
      warning("One of the specified columns (i, j, k) is not numeric")
      }
  )
  
  #This function adds column i and j and creates a new column, k. And returns final data frame 
  z <- df[ , i] + df[ , j] + df[ , k]
  df[ , l] <- z
  df
}

  #calling the function
x <- read.csv("../data/grades2.csv")
t <- grades_add(x, "Quiz", "Wksht", "Exam1", "SemSum")
t
```

    ##           Name   Quiz  Wksht Exam1  SemSum
    ## 1   Anantharaj 43.250 43.750 97.50 184.500
    ## 2       Barnes     NA     NA 56.25      NA
    ## 3       Basham 34.750 37.900 88.00 160.650
    ## 4         Batt  6.830 13.000 57.75  77.580
    ## 5  Fitzsimmons 30.250 34.500 74.00 138.750
    ## 6     Gunthert 29.250 40.250 81.50 151.000
    ## 7        Higgs 33.750 42.750 86.50 163.000
    ## 8         Kane 34.250 37.125 83.00 154.375
    ## 9      Killian 36.125 40.750 95.50 172.375
    ## 10        Moss     NA     NA 49.50      NA
    ## 11       Musat 33.125 37.375 75.00 145.500
    ## 12        Nave 26.250 40.750 80.00 147.000
    ## 13      Orozco 25.670 37.250 71.50 134.420
    ## 14      Ruyten 35.750 43.000 79.00 157.750
    ## 15   Sheffield 34.875 39.250 75.00 149.125
    ## 16       Tolle 35.750 41.000 90.00 166.750
    ## 17        Webb 18.500 36.500 57.00 112.000
    ## 18       Wills     NA     NA 78.25      NA
    ## 19      Womack 34.375 37.375 80.00 151.750
    ## 20        Zeng 25.750 40.650 73.75 140.150
