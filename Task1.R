a <- matrix(AirPassengers, nrow=12) #Original data in transposed matrix
b <- t(a)  #Original data matrix
colnames(b) <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
rownames(b) <- c("1949", "1950", "1951", "1952", "1953", "1954", "1955", "1956", "1957", "1958", "1959", "1960")
colMax = colnames(b)[which(b == max(b), arr.ind=TRUE)[,2]]   #Get max month and year
rowMax = rownames(b)[which(b == max(b), arr.ind=TRUE)[,1]]   #Get max month and year
cat("The max monthly profit was generated in",colMax, rowMax)
colnames(a) <- c("1949", "1950", "1951", "1952", "1953", "1954", "1955", "1956", "1957", "1958", "1959", "1960")
c <- (apply(a, 2, cumsum))
yearMax = colnames(c)[which(c == max(c), arr.ind=TRUE)[,2]]   #Get max year
cat("The max yearly profit was generated in",yearMax)   
ts.plot(AirPassengers)

#By analyzing the data, we see that July and August are the most travelled months.
