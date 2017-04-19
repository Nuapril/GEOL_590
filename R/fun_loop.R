fun_loop <- function (x){
  y <- 0
  #for each value in x 
   for(i in x) {
    #add each neighbor to the next and put it in an object called y
    y <- y + i 
  }
  return (y)
}
