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
bv <- c()
uv <- c()

for(i in 1:10000){
  oc <- sample(c(0,1),10, rep = TRUE)
  sm <- mean(oc)
  
  # Compute biased variance
  varian <- sum((oc - sm)^2) / 10
  bv <- append(bv, varian)

  # Compute unbiased variance
  varian_unb <- sum((oc - sm)^2) / 9
  uv <- append(uv, varian_unb)
}

cat("biased variance:", mean(bv), "\n")
cat("unbiased variance:", mean(uv), "\n")

