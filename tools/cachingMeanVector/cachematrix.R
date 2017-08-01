## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# The first function, makeCacheMatrix creates a special "matrix", which is really a list containing a function to

# set the value of the matrix
# get the value of the matrix
# setInverseMatrix the value of the inverse of the matrix
# getInverseMatrix the value of the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  
  inverse_matrix <- NULL
  
  set <- function(m){
    x <<- m
    inverse_matrix <<- NULL
  }
  
  get <- function() x
  
  setInverseMatrix <- function(inverse) inverse_matrix <<- inverse
  getInverseMatrix <- function() inverse_matrix
  list(set = set, 
       get = get, 
       setInverseMatrix=setInverseMatrix,
       getInverseMatrix = getInverseMatrix)
  
}


## Write a short comment describing this function
# The following function calculates the inverse of the special "vector"
# created with the above function. However, it first checks to see if the inverse has already been calculated.
# If so, it gets the inverse from the cache and skips the computation. 
# Otherwise, it calculates the inverse of the data and sets the value of the inverse in the cache via the solve function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverseMatrix()
        if(!is.null(m)) {
          message('Getting cache data')
          return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setInverseMatrix(m)
        m
}

##
# Test:
#
################################################
## m = makeCacheMatrix(matrix(c(2,4,4,1), 2, 2))
## m$get()
#
#      [,1] [,2]
# [1,]    2    4
# [2,]    4    1
##
## cacheSolve(m)
#         [,1]       [,2]
# [1,] -0.07142857  0.2857143
# [2,]  0.28571429 -0.1428571
##
## cacheSolve(m)
#  Getting cache data
#         [,1]       [,2]
# [1,] -0.07142857  0.2857143
# [2,]  0.28571429 -0.1428571