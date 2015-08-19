## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## create a special matrix which can cache the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(newX) {
    inv <<- NULL
    x <<- newX
  }
  get <- function() x
  getInv <- function () inv
  setInv <- function (newInv) inv <<- newInv
  list( get=get, set=set, setInv=setInv, getInv=getInv)
}


## Write a short comment describing this function
## compute the inverse of the matrix, if the inverse has been previously calculated, then it is recovered from cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInv()
  if (!is.null(inv)){
    message("inverse recovered from cache")
  }else{
    inv<- solve(x$get())
    x$setInv(inv)
  }
  inv
}
