cacheSolve <- function(x, ...){ 
    
   ## the inversion matrix IM of the matrix x 
   IM <- x$getInv() 
    
   ## calculation of the inversion matrix IM (haven't been calculated) 
   if (! is.null(IM)) { 
     
     message('getting cached data')
     
   } else { 
     
     message('Calculating the inverse...') 
     
     data <- x$get() 
     IM <- solve(data, ...) 
     x$setInv(IM) 
   } 
    
   IM 
} 
