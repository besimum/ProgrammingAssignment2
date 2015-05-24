## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  # Initialize the inverse
  inv <- NULL
  
  # Setter method for the matrix
  set < - function(matrix){
    mat <<- matrix
    inv <<- NULL
  }
  
  # Getter method for the matrix
  get <- function(){
    # return the matrix
    mat
  }
  
  # Setter method for the Inverse of the matrix
  setInverse <- function(inverse){
    inv <<- inverse
  }
  
  # Getter method for the Inverse of the matrix
  getInverse <- function(){
    # return the inverse
    inv
  }
  
  # Return methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mat <- x$getInverse()
  
  # Obtain the inverse
  if(!is.null(mat)) {
    message("Obtaining the cached data")
    return (mat)
  }
  
  # Obtain matrix from object above
  data <- x$get()
  
  # Calculate the inverse
  mat <- solve(data) %*% data
  
  # Setter method to the object
  x$setInverse(mat)
  
  # Return the matrix
  mat
  
  # TEST commit. This is a demo.
  
}
