#http://r-exercises.com/2016/01/07/reading-delimited-data/

#setup
setwd("C:/Users/kd/Dropbox/R/projects/r-exercises.com/delimitedData/")

#1
table1 <- read.table("Table0.txt", col.names = c("Name", "Age", "Height", "Weight", "Sex"), row.names = col.names)
table1[,1] -> rownames(table1)
subset(table1, select = -c(Name)) -> table1

#2
table2 <- read.table("Table1.txt", row.names = "Name", header = T)
dim(table2)
rownames(table2) <- table2$V1

#3
table3 <- read.table("Table2.txt", skip = 2)

#4
table4 <- read.table("Table3.txt", skip = 2, na.strings = c("--", "*", "**"), header = TRUE)

#5
table5 <- read.table("Table4.txt", skip = 2, na.strings = c("--", "*", "**"), header = FALSE, dec = ",")

#6
table6 <- read.table("Table4.txt", skip = 0, na.strings = c("--", "*", "**"), header = TRUE, dec = ".")

#7
table7 <- read.table("states1.csv", skip = 0, na.strings = c("--", "*", "**"), header = TRUE, dec = ".", sep = ",", row.names = 1)

#8
table8 <- read.table("states2.csv", header = TRUE, dec= ",", sep = ";")

#9
table9 <- read.table("states2a.csv", header = TRUE, dec= ",", sep = ";", na.strings = "0")
table9a <- cbind(table8, table9)

#10
table10 <- read.table("Table6.txt", header = TRUE, skip = 2, comment.char = "@", check.names = TRUE, stringsAsFactors = FALSE)
table10 <- table10[!duplicated(table10),]
