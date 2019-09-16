myFunction <- function(){
  x <- rnorm(100)
  mean(x)
}

secondFuntion <- function(x){
  x + rnorm(length(x))
}

cube <- function(x, n) {
  x^3
}
