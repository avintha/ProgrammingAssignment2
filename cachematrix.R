## The function makeCaheMatrix creates a special "matrix" object that can cache its inverse.
## The function cacheSolve computes the inverse of the special "matrix" returned by makeCachematrix.
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.


## Defining makeCacheMatrix function

makeCacheMatrix <- function(x=matrix()){
        a <- NULL
	  set <- function(y){                
               	x <<- y
		a <<- NULL
			  }
	  # get the matrix 
	  get <- function() x

	# calculate inverse of the matrix
	set_inverse <- function(inverse)
	a <<- inverse

	# get value of the inverse    
	get_inverse <- function() a 	       

list(set=set,get=get,set_inverse=set_inverse,get_inverse=get_inverse)
}

## Defining CacheSolve Function

cacheSolve <- function(x, ...) {
	#get the value of previous created matrix
	y <- x$get()

   	# get the value of the inverse matrix
      y_inverse <- x$get_inverse()  
          
	# checks if matrixes are identical AND IF value of inverse is NULL         
        if (identical(y,x) & !is.null(y_inverse))  
        {
        	message("getting cached data!!")
		#return value
		return(a)
        } else  {
		# if mean not calculated compute the inverse
        	a <- solve(y)    
        	a               
                }

		# return inverse value
		a
        
}
