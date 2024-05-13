library(echarts4r)
library(dplyr)

iris %>%
  group_by(Species) %>%
  summarise(sepal.length = mean(Sepal.Length),
            petal.length = mean(Petal.Length)) %>% 
  e_charts(Species) %>%
  e_bar(sepal.length) %>%
  e_bar(petal.length) %>%
  e_tooltip("item") %>%
  e_title("Iris dataset", "test bar charts")


library(tidyverse)

starwars %>% 
  transmute(bmi = mass/(height/100)^2) %>% 
  ggplot(aes(bmi)) +
  geom_histogram()
