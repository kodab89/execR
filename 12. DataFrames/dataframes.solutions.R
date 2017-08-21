#http://r-exercises.com/2016/01/04/data-frame-exercises/

#1
levels(df$Sex) <- c("M","F")

#2
data.frame(Working, row.names = Name); cbind(df, df2)

#3
class(state.center)

#4
df3[order(df3$i1, decreasing = TRUE),]

#5
colnames(df4) <- c(paste("variable_", 1:length(colnames(df4)), sep=""))
rownames(df4) <- c(paste("Id_", 1:length(rownames(df4)), sep=""))

#6
df5[,c(length(colnames(df5)),1:(length(colnames(df5)))-1)]
df5[,c(colNo(df5),1:(colNo(df5))-1)]

#7
sum(df8$Income > 4300)
row.names(df8)[(grep(max(df8$Income), df8))]

#8
df9 <- data.frame(swiss)[c(1:3, 10:13),c("Examination", "Education", "Infant.Mortality")]
df9$Infant.Mortality[grep("Sarine", rownames(df9))] <- NA
df9$Infant.Mortality[rownames(df9)=="Sarine"] <- NA
df9[rownames(df9)=="Total",] <- colSums(df9, na.rm = TRUE)
df10 <- rbind(df9, Total2 = colSums(df9, na.rm = TRUE))
as.vector(df10$Examination[!is.na(df10$Examination)]) / df10$Examination[rownames(df10)=="Total"]

#9
data.frame(cbind(state.abb, state.area, state.division, state.region), row.names = state.name) -> df11
colnames(df11) <- as.character(data.frame(strsplit(colnames(df11), split = "[.]"))[2,])

#10
