#input
input1 <- read.csv("C:/Users/kd/Dropbox/R/EXERCISES/r-exercises.com/StockPrices1/data.csv")

#1
#-

#2
data1.open <- subset(data1, year(as.POSIXct(data1$Date)) == 2016 & data1$Symbol == "BAC", select = Open)

#3
data2 <- aggregate(Close ~ Symbol, data = data1, max); colnames(data2) <- c("Symbol", "Close")
data2 <- merge(data2, data1[,c("Date","Close", "Symbol")], by = c("Close","Symbol"))
data3 <- aggregate(Close ~ Symbol, data = data1, min)
data3 <- merge(data3, data1[,c("Date","Close", "Symbol")], by = c("Close","Symbol"))
market_summary <- merge(data2, data3, by = "Symbol")
colnames(market_summary)[-1] <- c("Max Price", "Max Date", "Min Price", "Min Date")

#4
AvgPrice <- function(x,y,z){
  
  mean(subset(data1, as.Date(data1$Date) >= as.Date(y) & as.Date(data1$Date) <= as.Date(z) & data1$Symbol == x)$Close)
}

#5
x <- "BAC"
y <- "2016-07-20"
z <- "2016-09-20"

data1 %>%
  dplyr::filter(Symbol == x, as.Date(Date) >= as.Date(y), as.Date(Date) <= as.Date(z)) %>%
  select(Close) %>%
  colMeans()

#6
input2 =
  input1 %>%
    select(Symbol, Date, Close)

output1 =
  input2 %>%
    spread(Symbol, Close)

#7
output1 -> return.df

stock_names <- names(return.df)[-1]
stock_names <- setNames(stock_names, paste0(stock_names,"_Rd"))

output2 =
  return.df %>%
    select(-Date) %>%
    mutate_each_(funs( (. - lead(.))/lead(.) ), stock_names) %>%
    cbind(Date = return.df$Date,.)

gmean <- function(x, na.rm = TRUE)(exp(mean(log(x))))

output3 =
  output2 %>%
    select(grep("_Rd", colnames(output2))) %>%
    summarise_all(mean, na.rm = TRUE)

#8
output4 =
  output2 %>%
  select(grep("_Rd", colnames(output2))) %>%
  summarise_all(sd, na.rm = TRUE)
which.max(output4); max(output4)

#10
  output2 %>%
    select(grep("_Rd", colnames(output2))) %>%
    cor(use = "pairwise.complete.obs")


