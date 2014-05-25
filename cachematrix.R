## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  invertedMatrix <- NULL
  set <- function(normalMatrix){
    
      x <<- normalMatrix
      invertedMatrix <<- NULL
  }
  
  get <- function() x
  
  setInverted <- function(inverted) invertedMatrix <<- inverted
  getmInverted <- function() invertedMatrix
  
  list(set = set, get = get, setInverted = setInverted, getmInverted = getmInverted)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  im <- x$getmInverted()
  if(!is.null(im)){
      message("getting cashed data")
      return(im)
  }
  
  data <- x$get()
  im <- solve(data)
  x$setInverted(im)
  im
}
