a <- matrix(AirPassengers, nrow=12) #Original data in transposed matrix
b <- t(a) #Original data matrix
price = 8000
for(x in 1:12){
  for(y in 1:12){
    newMat = b*price           #Loop for calculating the matrix to be used in this task
  }
  price = price*1.1
}
colnames(newMat) <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
rownames(newMat) <- c("1949", "1950", "1951", "1952", "1953", "1954", "1955", "1956", "1957", "1958", "1959", "1960")
colMax = colnames(newMat)[which(newMat == max(newMat), arr.ind=TRUE)[,2]]  #Get max month and year
rowMax = rownames(newMat)[which(newMat == max(newMat), arr.ind=TRUE)[,1]]  #Get max month and year
cat("The max monthly revenue was generated in",colMax, rowMax)
colnames(newMat) <- c("1949", "1950", "1951", "1952", "1953", "1954", "1955", "1956", "1957", "1958", "1959", "1960")
c <- (apply(newMat, 2, cumsum))
yearMax = colnames(c)[which(c == max(c), arr.ind=TRUE)[,1]]  #Get max year
cat("The max yearly revenue was generated in", yearMax)
cat("The total revenue generated:", sum(newMat))

#By analyzing the data, we see that July and August are the most travelled months.