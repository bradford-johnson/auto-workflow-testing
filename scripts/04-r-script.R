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
   theme(
      plot.title = element_text(family = font, face = "bold", hjust = 0.5, vjust = 0, size = 58),
      
      plot.caption = ggtext::element_textbox_simple(size = 26),
      plot.margin = unit(c(10,20,10,7), "pt"),
      axis.title.y = element_text(family = font, face = "bold", margin = margin(0,3,0,0, unit = "mm"), size = 34),
      axis.text.y = element_text(family = font, color = "black", size = 26),
      axis.text.x = element_text(family = font, color = "black", size = 26),
      panel.grid.major = element_line(colour = "gray90"),
      panel.grid.minor = element_blank(),
      legend.position = "none",
      text = element_text(family = font),
      panel.background = element_blank(),
      plot.background = element_rect(fill = "#F3F5F6", color = "#F3F5F6"))

ggsave("plot.png", width = 9, height = 9)
