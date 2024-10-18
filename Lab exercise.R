
pacman::p_load(
  tidyverse, # the tidyverse framework
    kahleExtra,
  flextable,
  skimr)# quickly providing a broad overview of a data frame

EMDAT <- read.csv("/Users/shenzihan/Desktop/SOCS0100/EMDAT.csv") #import and rename the dataset

View(EMDAT)

df <- EMDAT %>%
  select(Entity, Year, injured_all_disasters, deaths_all_disasters, homeless_all_disasters) %>%
  rename(deaths = deaths_all_disasters, injured = injured_all_disasters, homeless = homeless_all_disasters)
glimpse(df)

df
