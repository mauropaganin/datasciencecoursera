add2 <- function(x, y){
  x + y
}

gt <- function(x, y){
  subset(x, x > y)
}

mycol <- function(x, removeNA = TRUE){
  nc <- ncol(x)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(x[, i], na.rm = removeNA)
  }
  means
}

f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}

remainder <- function(num, divisor) {
  rem <- num %% divisor
  rem
}