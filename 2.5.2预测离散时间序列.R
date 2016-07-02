pred <- function(x,k){
  n <- length(x)
  k2 <- k/2
  jishu <- vector(length=length(x)-k)
  sm <- sum(x[1:k])
  if(sm >= k2) jishu[1] <- 1 else jishu[1] <- 0
  if(n-k>=2){
    for( i in 2:(n-k)){###注意这个括号，没有括号就是(2:n)-k了，k=2，从0开始，故报错
      sm <- sm + x[k+i-1] - x[i-1]
      if(sm>=k2) jishu[i] <- 1 else jishu[i] <- 0
      print(jishu[i])
    }
  }
  return(mean(abs(jishu-xunlian[(k+1):n])))####!!!注意这个k+1的括号，如果没有括号，
}

xunlian <- c(1,0,0,1,0,0,1)
pred(xunlian,2)

####使用cumsum#####

pred1 <- function(x,k){
  n <- length(x)
  k2 <- k/2
  
  
}

