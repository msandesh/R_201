## Put comments here that give an overall description of what your
## functions do

## Caching of inverse matrix

## Author: Sandesh M

## Write a short comment describing this function

## Function to create an object which is a matrix.

makeCacheMatrix <- function(x = matrix()) {
        inv_mat <- NULL
  set <- function(y) {
    x <<- y
    inv_mat <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv_mat <<- inverse
  getInverse <- function() inv_mat
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

## Function to calculate the inverse of a matrix. If the inverse is already calculated for the given matrix then inverse for the matrix will be taken from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          inv_mat <- x$getInverse()
  if (!is.null(inv_mat)) {
    message("getting cached data")
    return(inv_mat)
  }
  mat <- x$get()
  inv_mat <- solve(mat, ...)
  x$setInverse(inv_mat)
  inv_mat
}
