aba <- read.csv("~/Desktop/R语言编程艺术/abalone.csv",header=T)
grps <- list()
for( i in c("M","F")){grps[[i]] <- which(aba[,1] == i)}
abam <- aba[grps$M,]#R对大小写敏感
abaf <- aba[grps$F,]
abam
abaf
plot(abam$length,abam$diameter,new=FALSE)
plot(abaf$length,abaf$diameter,pch="x",new=FALSE)#接下来用ifelse解决new参数

v <- ifelse(aba$gender=="M","o","x")
plot(aba$length,aba$diameter,pch=v)

