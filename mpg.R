# mpg data analysis
library(dplyr)
library(ggplot2)

mpg <- as.data.frame(ggplot2::mpg)
boxplot(mpg$hwy)

# dealing with missing values
mpg$hwy <- ifelse(mpg$hwy < 12 | mpg$hwy > 37, NA, mpg$hwy)
table(is.na(mpg$hwy))

mpg %>% group_by(drv) %>% summarise(mean_hwy = mean(hwy, na.rm = T))

# scatterplot
ggplot(data=mpg, aes(x=displ, y=hwy)) + geom_point()

ggplot(data=mpg, aes(x=displ, y=hwy)) + geom_point() + xlim(3,6)

ggplot(data=mpg, aes(x=displ, y=hwy)) + 
  geom_point() +
  xlim(3,6) +
  ylim(10,30)

# bar graph
mpg <- as.data.frame(ggplot2::mpg)
df_mpg <- mpg %>% group_by(drv) %>% summarise(mean_hwy = mean(hwy))
df_mpg

ggplot(data=df_mpg, aes(x=drv, y=mean_hwy)) + geom_col()

ggplot(data=df_mpg, aes(x=reorder(drv, -mean_hwy), y=mean_hwy)) + geom_col()
ggplot(data=df_mpg, aes(x=reorder(drv, mean_hwy), y=mean_hwy)) + geom_col()

# Line graph
ggplot(data=economics, aes(x=date, y=unemploy)) + geom_line()

# boxplot
ggplot(data=mpg, aes(x=drv, y=hwy)) + geom_boxplot()


