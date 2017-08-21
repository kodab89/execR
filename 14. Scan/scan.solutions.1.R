#http://r-exercises.com/2016/01/11/scan-exercises/

#1
vector1 <- scan("http://r-exercises.com/wp-content/uploads/2015/12/scan01.txt")

#2
vector2 <- scan("http://r-exercises.com/wp-content/uploads/2015/12/scan02.txt")
vector2 <- as.vector(vector2)
matrix1 <- matrix(vector2, nrow = 10,byrow = TRUE)
