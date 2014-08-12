## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix<-function(x=matrix()){ ##this function makes a cache for input
  i<-NULL
  set<-function(y){
    x<<-y
    i<<-NULL
  }
  get<-function() x
  setInverseMatrix<-function(inv) i<<-inv
  getInverseMatrix<-function() i
  list(set=set,get=get,setInverseMatrix=setInverseMatrix,getInverseMatrix=getInverseMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {        ##this function checks for the cache if present it will retrive value from the catche
  ## Return a matrix that is the inverse of 'x'
  i<-x$getInverseMatrix()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  matix<-x$get()
  i<-solve(matix)
  x$setInverseMatrix(i)
  i
}
