# map visualization
# ggiraphExtra
install.packages("ggiraphExtra")
library(ggiraphExtra)

str(USArrests)
head(USArrests)

library(tibble)

crime <- rownames_to_column(USArrests, var="state")
head(crime)

crime$state <- tolower(crime$state)
str(crime)

library(ggplot2)
install.packages("maps")
install.packages("mapproj")

states_map <- map_data("state")
str(states_map)

# choropleth map
ggChoropleth(data = crime,
             aes(fill = Murder,
                 map_id = state),
             map = states_map)

# interactive choropleth map
ggChoropleth(data = crime,
             aes(fill = Murder,
                 map_id = state),
             map = states_map,
             interactive = T)



