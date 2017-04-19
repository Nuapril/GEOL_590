#' Geometric Mean
#'
#' @param x A vector
#' @param y A number
#' @param i A number
#' @return The mean of \code{y} to the nth degree in the vector \code{x}
#' @examples
#' x <- c(1, 2, 3)
#' geo_mean(x)

geo_mean <- function (x) {
  y <- 0
  #n <- the number of values in the vector. How can I tell R this?
  for (i in x) {
    y <- (y+i)/i #i really want n here
  }
  return (y)
}
