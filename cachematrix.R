## Put comments here that give an overall description of what your
## functions do
## this function will get the cached inverse value of the given matrix if there else will compute explicitly this will
## help us to reduce the computation 
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
                  i <- NULL
                  set <- function(y) {
                    x <<- y
                    i <<- NULL
                  }
                  get <- function() x
                  setinverse <- function(inverse) i <<- inverse
                  getinverse <- function() i
                  list(set = set, get = get,
                       setinverse = setinverse,
                       getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

          i <- x$getinverse()
          if(!is.null(i)) {
            message("getting cached data")
            return(i)
          }
          data <- x$get()
          i <- solve(mat, ...)
          x$setinverse(m)
  
}
