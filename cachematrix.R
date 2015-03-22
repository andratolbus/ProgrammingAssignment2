## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function



# the makeCacheMatrix functions creates the methods characterizing a matrix object  
# set -> assigning the value of a matrix 
# get  ->returns the value of the matrix 
# solvematrix -> calculates the inverse of the matrix
# getmatrix -> returns the calculated inverse of the matrix 


makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  solvematrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       solvematrix=solvematrix,
       getmatrix=getmatrix)
}





## the function checks whether the inverse of the matrix has been calculated already and returns it if found
## if not, it gets the value of the matrix and calculates the inverse and returns it 

cacheSolve <- function(x, ...) {
  m<-x$getmatrix()
  if(!is.null(m)){
    message("Return matrix from cache")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$solvematrix(m)
  m
}




