library(tidyverse)
library(gapminder)
library(showtext)
library(htmltools)

showtext_auto()

font_add(family = "fb",
         regular = "fonts/Font Awesome 6 Brands-Regular-400.otf")

font_add_google(name = "Ubuntu", family = "Ubuntu")
font <- "Ubuntu"

caption = paste0("<span style='font-family:fb;'>&#xf09b;</span>",
                 "<span style='font-family:sans;color:white;'>.</span>",
                 "<span style='font-family:sans;'>bradfordjohnson</span>")

df <- gapminder

df |>
  filter(country == "United States") |>
  ggplot(aes(x = year, y = lifeExp)) +
  geom_line() +
  labs(title = "This is a test plot",
      caption = caption) +
  theme(plot.caption = ggtext::element_textbox_simple(color="black", size = 10))

ggsave("plot.png", width = 5, height = 5)
