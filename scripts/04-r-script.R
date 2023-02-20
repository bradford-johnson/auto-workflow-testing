library(tidyverse)
library(gapminder)

df <- gapminder

df |>
  filter(country == "United States") |>
  ggplot(aes(x = year, y = lifeExp)) +
  geom_line() +
  labs(title = "This is a test plot")

