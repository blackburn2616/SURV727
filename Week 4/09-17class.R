library(tidyverse)

#split-apply-combine with dplyr

#using ungroup()
mtcars %>% group_by(cyl) %>% 
  summarize(mean_hp=mean(hp))

mtcars %>% group_by(cyl) %>% 
  mutate(mean_hp=mean(hp)) %>%
  ungroup()
