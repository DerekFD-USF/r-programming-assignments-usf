A=matrix(c(2,0,1,3), ncol=2)

B=matrix(c(5,2,4,-1), ncol = 2)

A

B

C <- A + B

C

Subtracted_AnB <- A - B

Subtracted_AnB

Question2 <- diag(x = c(4,1,2,3), nrow = 4)

Question2

Question3 <- diag(x = 3, nrow = 5, ncol = 5)

Question3[1, 2:5] <-1

Question3[2:5, 1] <-2

Question3
