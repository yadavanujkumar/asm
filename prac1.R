#mean
oc<-sample(c(0,1), 10 ,rep = TRUE)
sampl<-mean(oc)
cat(sampl)

#emprical mean

ml<-c()
for(i in 1:10000){
  oc<-sample(c(0,1),10,rep = TRUE)
  sm<-mean(oc)
  ml<-append(ml,sm)
}
cat(mean(ml))

#var
oc<-sample(c(0,1),10,rep = TRUE)
sv<-var(oc)
sv

#empirical var
bv<-c()
uv<-c()

for(i in 1:10000){
  oc<-sample(c(0,1),10, rep = TRUE)
  sm<-mean(oc)
  varian<-0
  for (j in 1:10){
    uv<-uv+(oc[j] - sm)^2
  }
  uv<-uv / 10
  bv <- append(bv,varian)
}

un <- 0
for (j in 1:10) {
  un <- un + (oc[j] - sm)^2  
}
un <- un / 9  
uv <- append(uv, un) 
cat("biased variance:", mean(bv))
cat("unbiased variance:", mean(uv))