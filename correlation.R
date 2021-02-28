# correlation
library(dplyr)

mpg <- as.data.frame(ggplot2::mpg)

mpg_diff <- mpg %>% select(class, cty) %>% filter(class %in% c("compact","suv"))

head(mpg_diff)

table(mpg_diff$class)

### t-test ###
t.test(data = mpg_diff, cty ~ class, var.equal = T)

#Two Sample t-test
#
#data:  cty by class
#t = 11.917, df = 107, p-value < 2.2e-16
#alternative hypothesis: true difference in means is not equal to 0
#95 percent confidence interval:
#  5.525180 7.730139
#sample estimates:
#  mean in group compact     mean in group suv 
#         20.12766              13.50000 


mpg_diff2 <- mpg %>% select(fl, cty) %>% filter(fl %in% c("r","p"))

table(mpg_diff2$fl)

### t-test ###
t.test(data = mpg_diff2, cty ~ fl, var.equal = T)

#data:  cty by fl
#t = 1.0662, df = 218, p-value = 0.2875
#alternative hypothesis: true difference in means is not equal to 0
#95 percent confidence interval:
#  -0.5322946  1.7868733
#sample estimates:
#  mean in group p mean in group r 
#17.36538        16.73810 


# correlation analysis
economics <- as.data.frame(ggplot2::economics)
head(economics)

cor.test(economics$unemploy, economics$pce) # cor 0.6145176 

# heatmap
head(mtcars)

car_cor <- cor(mtcars)
round(car_cor, 2)

install.packages("corrplot")
library(corrplot)

corrplot(car_cor)

corrplot(car_cor, method="number")

col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF", "#77AADD", "#4477AA"))
corrplot(car_cor,
         method = "color",
         col=col(200), type = "lower", order = "hclust", addCoef.col = "black",
         tl.col = "black", tl.srt = 45, diag = F)

