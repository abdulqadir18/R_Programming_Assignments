#Task 2 : Matrix
#creating matrix
mat1 <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15), nrow=3, ncol=5)
mat1
mat2 <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15), ncol=3, nrow=5)
mat2

#rbind cbind
mat1 <- rbind(mat1,c(-1,-2,-3,-4,-5))
mat1
mat2 <- cbind(mat1,c(-1,-2,-3,-4))
mat2

#apply
print("sum of rows of matrix1")
apply(mat1,1,sum)
print("mean of column of matrix2")
apply(mat2,2,mean)