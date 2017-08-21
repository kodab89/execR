#http://r-exercises.com/2016/01/26/conditional-execution-exercises/

#1
gen_x <- function(n=1) { round(sample(replicate(100,runif(1, -10,10)),n),2)}
x_abs <- abs(gen_x())
if (x_abs > 0 ){cat("success")}
