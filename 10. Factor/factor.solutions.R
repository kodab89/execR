#http://r-exercises.com/2015/12/28/factor-exercises/

#1 a

#2 c

#3 c

#4
levels(z)[grep("w", levels(z))] <- "w"

#5
factor(unlist(list(s1, s2))) -> s3

#6
factor(table(cut(iris$Sepal.Length, breaks = 5))) -> s4

#7
with(iris, table(iris$Sepal.Length < 5, iris$Species))

#8
levels(responses)[length(levels(responses)) + 1] <- "Strongly Disagree"

#9
x[[grep("lab",x)]] <- c("label7", "label8", "label9")

#10
data.frame(levels = levels(y),value = c(1:length(levels(y))))