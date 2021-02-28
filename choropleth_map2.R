install.packages("stringi")
install.packages("devtools")
devtools::install_github("cardiomoon/kormaps2014")

library(ggplot2)
library(ggiraphExtra)
library(kormaps2014)

str(korpop1)

library(dplyr)
korpop1 <- rename(korpop1, pop=총인구_명, name=행정구역별_읍면동)
str(korpop1)
str(kormap1)

# choropleth map (population)
ggChoropleth(data = korpop1,
             aes(fill = pop,
                 map_id = code,
                 tooltip = name),
             map = kormap1)

ggChoropleth(data = korpop1,
             aes(fill = pop,
                 map_id = code,
                 tooltip = name),
             map = kormap1,
             interactive = T)

# choropleth map (TB)
ggChoropleth(data = tbc,
             aes(fill = NewPts,
                 map_id = code,
                 tooltip = name),
             map = kormap1,
             interactive = T)



