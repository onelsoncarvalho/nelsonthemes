require(remotes)
require(usethis)
require(ggplot2)

# Testing area
# Loading all themes
load_all()

# attach data to the bottom
# Neo Dawn - IDEIA DE NOME DE FUNCAO
# Neo Sun & Neo Down
neo_down <- function(add = 0.25) {
  scale_y_continuous(
    expand = expansion(c(0, add))
  )
}
use_r("neo_down")

# Testing and improving theme_neo_x

# nhtemp - The mean annual temperature in degrees Fahrenheit in New Haven, Connecticut, from 1912 to 1971.
nhtemp
# Converting nhtemp time series object to data frame
nhtemp <- data.frame(nhtemp = nhtemp, year = 1912:1971)

# Time series/line chart
ggplot(nhtemp, aes(y = nhtemp, x = year)) +
  geom_line() +
  theme_neo_x() +
  labs(
    title = "Mean annual temperature",
    subtitle = "New Haven, Connecticut (1912-1971)",
    x = "Year",
    y = "Temperature"
  )

ggplot(nhtemp, aes(y = nhtemp, x = year)) +
  geom_line() +
  theme_bw() +
  labs(
    title = "Mean annual temperature",
    subtitle = "New Haven, Connecticut (1912-1971)",
    x = "Year",
    y = "Temperature"
  )


?expansion
ggplot(iris, aes(x = Sepal.Length)) +
  geom_bar(stat = "count") +
  theme_neo(layout = 3) +
  labs(
    title = "Histogram Iris",
    subtitle = "Sepal Length",
    x = "Sepal Length",
    y = "Count"
  ) +
  neo_down()

document()

?neo_down
?theme_neo
?theme_neo_x

# 3 - Major e Minor
# 2 - Major
# 1 - Minor
# 0 - None


# Testing ink saver color (#313131)
ggplot(iris, aes(x = Sepal.Length)) +
  geom_bar(stat = "count") +
  theme_neo(layout = 3) +
  labs(
    title = "Histogram Iris",
    subtitle = "Sepal Length",
    x = "Sepal Length",
    y = "Count"
  ) +
  neo_down()

# Converting nhtemp time series object to data frame
nhtemp <- data.frame(nhtemp = nhtemp, year = 1912:1971)

# Time Series/Line chart
ggplot(nhtemp, aes(y = nhtemp, x = year)) +
  geom_line() +
  theme_neo_x() +
  neo_down() +
  labs(
    title = "Average Yearly Temperatures in New Haven",
    subtitle = "New Haven, Connecticut (1912-1971)",
    x = "Year",
    y = "Temperature"
  )

