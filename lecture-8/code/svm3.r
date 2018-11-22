thetas <- runif(400,min=-1,max=1)*pi
err <- rnorm(400,mean=0)
zs <- sample(c(1,0),400,replace=TRUE)
rs <- 6*zs+err*0.8

xs <- rs*cos(thetas)
ys <- rs*sin(thetas)

png("images/svm3.png")
par(mfrow=c(1,2))
plot(xs,ys,col=zs+3,cex=0.4)
plot(xs,xs*xs+ys*ys,col=zs+3,cex=0.4)
dev.off()

