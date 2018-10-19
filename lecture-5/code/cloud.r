cloud <- function(x,y,r,N,color) {
   theta <- runif(N,min=0,max=2*pi)
   rho <- rnorm(N,mean=r,sd=2*r)
   xs <- x + cos(theta)*rho
   ys <- y + sin(theta)*rho
   cs <- rep(color,N)
   return(data.frame(xs,ys,cs))
}

A <- cloud(-1,-2,0.75,150,0)
B <- cloud(0,1.5,0.50,100,1)
C <- cloud(2,-1.5,0.25,250,2)

res <- rbind(A,B,C)
write.table(res, file="data/clusters.csv", quote=FALSE, sep=",")

png(file="images/clusters.png")
plot(res[,1:2],col=res[,3])
dev.off()

