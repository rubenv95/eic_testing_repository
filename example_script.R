#### Example Script Set up ----

library(dplyr)
library(ggplot2)

starwars |>
  count(hair_color) |>
  ggplot(aes(hair_color, n)) +
  geom_col(fill = "#3F3685") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, hjust=1)) +
  labs(x="Hair Colour", y="Number of Characters",
       title = "Hair colours of star wars characters")

#### Another section ----

iris |>
  ggplot(aes(Sepal.Length, Sepal.Width, colour = Species)) +
  geom_point()
