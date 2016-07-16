mind <- function(d){
  n <- nrow(d)
  dd <- cbind(d,1:n)#add a column as a index of row number
  wmins <- apply(dd[-n,],1,imin)#这个函数在下面写
  #because it's sysmmetric, the last row is calculated before
  #结果中第一行是行号，第二行是距离
  i <- which.min(wmins[2,])#距离最小值所在号码，即行号
  j <- wmins[1,i]#imin函数的第一行内容为第i行取得最小距离时的列数
  return(c(d[i,j],i,j))
         
  imin <- function(x){#在本题的矩阵中得到每行的最小值
    lx <- length(x)
    i <- x[lx]#由于最后一列index为行号，因此x[lx]为左对角线上的点
    #由于对称性，接下来只对比右半边即可
    j <- which.min(x[lx]:x[lx]-1)#减1是因为最后一列为index
    #这样得到的就是x行中最小距离对应的列数为j+i
    return(c(j+i,x[j+i]))
    
    
  }
  
}

tt <- matrix(c(3,2,1,2,4,5,1,5,2),nrow=3)
