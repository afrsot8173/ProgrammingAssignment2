## Two functions to store a matrix and cache its inverse
##

## Create matrix object

makeCacheMatrix <- function(x = matrix()) {
        i<-NULL
        set<-function(y){
                x<<-y
                i<<-NULL
                }
        get <- funtion() x
        setInverse<-function(inverse) i <<- inverse
        getInverse <- function() i
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInvverse = getInverse)
        }


## Calculates inverse of matrix created by function makeCacheMatrix. If inverse already calculated it retrieves the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getInverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
                }
        mat<- x$get()
        i <- solve(mat, ...)
        x$setInverse(i)
        i
}
