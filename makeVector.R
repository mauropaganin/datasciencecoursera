makeVector <- function(x = numeric()) {
  media <- NULL
  set <- function(y) {
    x <<- y
    media <<- NULL
  }
  get <- function() x
  setmean <- function(mean) media <<- mean
  getmean <- function() media
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}

cachemean <- function(x, ...) {
  media <- x$getmean()
  if(!is.null(media)) {
    message("getting cached data")
    return(media)
  }
  data <- x$get()
  media <- mean(data, ...)
  x$setmean(media)
  media
}

