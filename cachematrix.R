## These functions take the inverse of a matrix and save it in a cache

## this function returns the vector x that is stored in the main function and then changes that vector to the data series, then computes the inverse of that matrix and stores it in cache

makeCacheMatrix <- function(x = matrix()) {
	inv=null 
	set = function(y) {
	x <<- y
	inv <<- NULL	
	}
	
	get = function() x 
	setinverse <- function(inverse) m <<- solve
	getinverse <- function() m 
	list(set = set, get=get, 
			setinverse=setinverse,
			getinverse=getinverse)
}

## computes the inverse, but pulls the inverse from the cache if it is already in existence

cacheSolve <- function(x, ...) {
        inv = x$getininv()
        if (!is.null(inv)) {
        	message("getting cached data")
        	return(inv)
        }
        data <- x$get()
        m <- solve(data,...)
        x$setinverse(m)
        m
}
