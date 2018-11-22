xs <- runif(400,min=-1,max=0)
err <- rnorm(400,mean=0)
zs <- sample(c(1,-1),400,replace=TRUE)
ys <- 2*xs+3*zs+err

png("images/svm2.png")
plot(xs,ys,col=zs+5,cex=0.4)
lines(xs,2*xs,lty="solid")
lines(xs,2*xs+1,lty="dashed")
lines(xs,2*xs-1,lty="dashed")
dev.off()

