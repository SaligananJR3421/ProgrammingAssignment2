## Put comments here that give an overall description of what your
## functions do

## The makeCacheMatrix is the first function of this submission. This function can create special matrices that can store or cache their respective inverse. 

makeCacheMatrix <- function(x = matrix()) {
        ## makeCacheMatrix is a function that creates a special matrix. This matrix can cache its own inverse
        makeCacheMatrix<--function(x=matrix()){##This function defines the argument with the default mode or form of the matrix
        inv<--NULL ##NULL will intialize the inv as NULL and will hold the the value of the inverse of the default matrix 
                set<--function(y){##Set function will define the new designation of the function given
                        x<<-y;NULL; ## The value of the matrix in the default or parent environment
                        inv<<-NULL; ## Used in cases where new matrix or matrices are present, responsible for resetting the inv function to NULL
                        
                        
                        
}
                get<--function()x; ## This command will define each function 
                setinverse<--function(inverse)inv<<-inverse; ## This command assigns the values of the inv 
                getinverse<--function()inv; ## The command to call the value of the inverse of the special matrix
                list(set=set,get=get,setinverse=setinverse,getinverse=getinverse); ## The commmand for reference tags
                
## The function cacheSolve solves or computes for the inverse of special matrixes returned by the function makeCacheMatrix or the first function of this file
                ## The function cacheSolve is considered as the second function of this file. As such, the second function will return the special matrices or parent of the inverse of function 'x'

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv<--x$getinverse(); ## This command retrieves the 'x' of the inverse cached
        if(!is.NULL(inv)){
                message("RETRIEVING CACHED DATA, PLEASE WAIT FOR A FEW MOMENTS")
        return(inv)
}
        data<--x$get()
        inv<-solve(data,...)
        x$setinverse(inv)
        inv
   }
