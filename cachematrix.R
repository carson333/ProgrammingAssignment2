## My functions compute the inverse of a matrix and cache both
## the inverse and the matrix.

## The user will input a matrix, and the program will cache
## the matrix, and inverse matrix without printing anything.

makeCacheMatrix <- function(mat = matrix()) {
  mat <<- mat
  inverse <<- solve(mat)
  message ("The matrix and its inverse have been cached.")
}

## The user will input the matrix and it will print its inverse.
## It will also attempt to retrieve the cached inverse 
## in order not to do the calculations.

cacheSolve <- function(x = matrix(), ...) {
  if("x" == "mat") {
    print(inverse)
  } else { 
    message("The inverse is not cached, computing inverse now.")
    mat <<- x
    inverse <<- solve(x)
    print(inverse)
  }   
}
