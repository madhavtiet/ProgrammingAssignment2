## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  # the code will create a cache matrix
    m <- NULL
    set <- function(y) {
    x <<- y
    m <<- NULL
    }
    get <- function() x
    ## request to get the inverse of matrix
    setsolve <- function(solve) m <<- solve
    getsolve <- function() m
    
    list(set = set, get = get,
    setsolve = setsolve,
    getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getsolve()
        ## return the comment that the matrix inverse is cached and being returned
    if(!is.null(m)) {
         message("getting cached data")
    return(m)
    }
        ## Calculate inverse of a matrix
    data <- x$get()
    m <- solve(data, ...)
    x$setsolve(m)
    ## Return solved inverse matrix
    m
}
