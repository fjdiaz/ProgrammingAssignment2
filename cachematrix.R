## This function sets the inverse of a matrix "m" and stores it in "setmatrix" as part of a list.

makeCacheMatrix <- function(x = matrix()) {
		m <- NULL
        	set <- function(y) {
                x <<- y
                m <<- NULL
        }
	get <- function() x
        setmatrix <- function(solve) m <<- solve
        getmatrix <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}

## This function retreives m stored in getmatrix and if m is NOT =null then returns m.
## If m is null, then m is recalculated using the solve function and stored again in "setmatrix"

}

cacheSolve <- function(x, ...) {
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmaterix(m)
        m
}
