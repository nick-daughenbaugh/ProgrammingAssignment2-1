makeCacheMatrix <- function(x = matrix()){ 
  
  I <- NULL 
  
  ## set the matrix x 
  set <- function(m){ 
    x <<- m 
    I <<- NULL 
  } 
  
  ## get the matrix x 
  get <- function(){ 
    x                
  }  
  
  ## set the inverse matrix of x 
  setInv <- function(i) { 
    I <<- i 
  } 
  
  ## get the inverse matrix of x 
  getInv <- function() { 
    I 
  } 
  
  ## list of internal methods 
  list(set = set, get = get, setInv = setInv, getInv = getInv) 
}
