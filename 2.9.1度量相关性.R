a <- c(1:10)
b <- c(1,2,3,4,5,7,8,9,0,0)
c <- c(a==b)
mean(c)
c




f2 <- function(x,y){
  f1 <- function(x){
    v <- x[-1]-x[-length(x)]
    return(ifelse(v>0,1,-1))
  }
  q <- lapply(list(x,y),f1)
  return(mean(q[[1]] == q[[2]]))
}

f2(a,b)

####用diff优化####


f22 <- function(x,y){
  f11 <- function(x){
    v <- diff(x)###优化处
    ifelse(v>0,1,-1)
  }
  l <- lapply(list(x,y),f11)
  return(mean(l[[1]] == l[[2]]))
}

f22(a,b)

###用sign优化####
f222 <- function(x,y){
  return(mean(sign(diff(x)) == sign(diff(y))))
}
f222(a,b)
