library('tidyverse')
library('plotly')
# espn rb
rb_espn <- read.csv("rb_ffb_espn.csv", stringsAsFactors = FALSE)
str(rb_espn)

rb_espn$espn <- as.numeric(as.character(rb_espn$espn))

espnrb_values <- rb_espn %>%
  na.omit() %>%
  mutate(value = espn - ffb) %>%
  arrange(-value) %>%
  head(15) %>%
  summarize(
    Player = player,
    Values = value
  )

# sleeper rb
rb_sleeper <- read.csv("rb_ffb_sleeper.csv", stringsAsFactors = FALSE)
str(rb_sleeper)

rb_sleeper$sleeper <- as.numeric(as.character(rb_sleeper$sleeper))

sleeperrb_values <- rb_sleeper %>%
  na.omit() %>%
  mutate(value = sleeper - ffb) %>%
  arrange(-value) %>%
  head(15)  %>%
  summarize(
    Player = player,
    Values = value
  )

# espn wr
wr_espn <- read.csv("wr_ffb_espn.csv", stringsAsFactors = FALSE)
str(wr_espn)

wr_espn$espn <- as.numeric(as.character(wr_espn$espn))

espnwr_values <- wr_espn %>%
  na.omit() %>%
  mutate(value = espn - ffb) %>%
  arrange(-value) %>%
  head(15) %>%
  summarize(
    Player = player,
    Values = value
  )

# sleeper wr
wr_sleeper <- read.csv("wr_ffb_sleeper.csv", stringsAsFactors = FALSE)
str(wr_sleeper)

wr_sleeper$sleeper <- as.numeric(as.character(wr_sleeper$sleeper))

sleeperwr_values <- wr_sleeper %>%
  na.omit() %>%
  mutate(value = sleeper - ffb) %>%
  arrange(-value) %>%
  head(15) %>%
  summarize(
    Player = player,
    Values = value
  )

