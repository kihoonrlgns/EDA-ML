install.packages("plotly")
library(plotly)
library(ggplot2)

p <- ggplot(data = mpg, aes(x = displ, y = hwy, col = drv)) + geom_point()

# interactive graph
ggplotly(p)

# interactive bar graph
p <- ggplot(data = diamonds, aes(x = cut, fill = clarity)) + 
  geom_bar(position = "dodge")

ggplotly(p)

## Line Graph
install.packages("dygraphs")
library(dygraphs)

economics <- ggplot2::economics
head(economics)

library(xts)

eco <- xts(economics$unemploy, order.by = economics$date)
head(eco)

# interactive line graph
dygraph(eco)

dygraph(eco) %>% dyRangeSelector()

# display value simultaneously
eco_a <- xts(economics$psavert, order.by = economics$date)

eco_b <- xts(economics$unemploy/1000, order.by = economics$date)

eco2 <- cbind(eco_a, eco_b)
colnames(eco2) <- c("psavert", "unemploy")
head(eco2)

dygraph(eco2) %>% dyRangeSelector()

