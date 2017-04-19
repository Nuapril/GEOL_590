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
  

