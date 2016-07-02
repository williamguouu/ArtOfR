
library(pixmap)
mtrush1 <- read.pnm("~/Desktop/mtrush1.pgm")
plot(mtrush1)
str(mtrush1)
mtrush1@grey
mtrush1@grey[28,88]
locator()
locator()
mtrush2 <- mtrush1
mtrush2@grey[134:176,38:110] <- 1
plot(mtrush2)
mtrush2 <- mtrush1
mtrush2@grey[84:163,134:176] <- 1
plot(mtrush2)

dama <- function(picture,rows,cols,q){
  rrow=length(rows)
  rcol=length(cols)
  suijishu <- matrix(nrow=rrow,ncol=rcol,runif(rrow*rcol))#
  new <- picture
  new@grey[rows,cols] <- (1-q)*picture@grey[rows,cols]+q*suijishu #这句和书上写的不太一样
  return(new)
  
}

test <- dama(mtrush1,84:163,134:176,0.5)
plot(test)
plot(dama(mtrush1,84:163,134:174,0.5))

#按书上的试一下
dama1 <- function(picture,rows,cols,q){
  rrow=length(rows)
  rcol=length(cols)
  suijishu <- matrix(nrow=rrow,ncol=rcol,runif(rrow*rcol))#
  new <- picture
  new@grey <- (1-q)*picture@grey+q*suijishu #这句和书上写的不太一样
  return(new)
  
}

plot(dama1(mtrush1,84:163,134:174,0.5))
#书上这个版本在那句不一样处报错