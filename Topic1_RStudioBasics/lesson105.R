### File: lesson105.R

## Part 1. Vector and Matrix (and Array) in R.
n0 <- as.integer(20)
n0
typeof(n0)

n1 <- 15 # Assign 15 to variable n1
n1
typeof(n1)

n2 <- 1.5
n2
typeof(n2)

c1 <- "This is a string"
c1
typeof(c1)

n3 <- as.numeric("123")
n3
typeof(n3)

l1 <- TRUE # TRUE or T
l2 <- F # FALSE or F
l1
l2
typeof(l1)
typeof(l2)


v1 <- c(1,2,3,4,5) # c() is for concatenate; elements must be the same type of double float, character, boolean, etc.
v1
typeof(v1)
is.vector(v1) # "double"

m1 <- matrix(c(1,2,3,4,5,6,7,8),nrow=2,byrow=T)
m1
typeof(m1) # "double"

array1 <- array(c(1,2,3,4,5,6,7,8,9,10,11,12),c(2,3,2))
array1

## Part 2. Data Frame
# Combines different type of data into same table. Like "cell" in MATLAB
vNum <- c(1,2,3)
vChar <- c("A","B","C")
vLogic <- c(T,F,T)

vCombine <- cbind(vNum,vChar,vLogic)
vCombine # Automatically transfer to the most general format

vCombineAgain <- as.data.frame(cbind(vNum,vChar,vLogic))
vCombineAgain
# Note that cbind() transferred everything to character, 
# then as.data.frame() transfer everything to data frame type.

## Part 3. List

list1 <- list(vNum,vChar,vLogic)
list1
list2 <- list(vNum,list1)
list2



