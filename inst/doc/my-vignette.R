## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
# install.packages("devtools")
# devtools::install_github("nvietto/Rdune")

library(Rdune)

## ----fig.align='center'-------------------------------------------------------
names(dune_palettes)

## ----fig.align='center'-------------------------------------------------------
pal <- dune_palette("harkonnen4")

print.palette(pal)

## -----------------------------------------------------------------------------
df <- data.frame(
  ID = 1:5,
  Name = c("Alice", "Bob", "Carol", "Dave", "Eve"),
  Age = c(25, 30, 22, 35, 28),
  Group = c("A", "B", "C", "B", "A")
)

## ----fig.align='center', fig.height=3, fig.width=5----------------------------
library(ggplot2)
ggplot(
  data = iris,
  mapping = aes(x = Sepal.Length, fill = Species)
) +
  geom_density(alpha = 0.5) +
  scale_fill_dune_d(name = "harkonnen2")
ggplot(
  data = df,
  mapping = aes(x = Name, y = Age, color = Group)
) +
  geom_col(linewidth = 3, fill = "white") +
  scale_color_dune_d(name = "fermen2")

## ----fig.align='center', fig.height=3, fig.width=5----------------------------
ggplot(data.frame(x = rnorm(10000), y = rnorm(10000)),
  mapping = aes(x = x, y = y)
) +
  geom_hex() +
  scale_fill_dune_c(name = "harkonnen")
ggplot(
  data = iris,
  mapping = aes(x = Species, y = Sepal.Width, color = Sepal.Length)
) +
  geom_point(size = 2) +
  scale_color_dune_c(name = "sandworm")

