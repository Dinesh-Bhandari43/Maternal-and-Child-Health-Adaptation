library(tidyverse)
world<- map_data("world")
#Different package
library("ggplot2")
theme_set(theme_bw())
library("sf")

library("rnaturalearth")
library("rnaturalearthdata")
library(readr)
Clean <- read_csv("//ad.monash.edu/home/User091/dbha0027/Desktop/Data_extraction/Eviatlas.csv")
View(Clean)

world <- mutate(world, country = case_when(
  region %in% c("China") ~ "green", 
  region %in% c("USA") ~ "yellow", 
  region %in% c("Peru") ~ "cyan", 
  region %in% c("Mongolia") ~ "pink", 
  region %in% c("Pakistan") ~ "violet", 
  region %in% c("Bangladesh") ~ "brown", 
  region %in% c("Indonesia") ~ "red", 
  region %in% c("Iran") ~ "blue", 
  region %in% c("Uganda") ~ "magenta", 
  region %in% c("Benin") ~ "orange", 
  region %in% c("Nigeria") ~ "maroon", 
  TRUE ~ "white"))





ggplot() +
  geom_map(
    data = world, map = world,
    aes(x=long, y=lat, map_id = region), colour="grey", fill = world$country, alpha=0.5)+
         geom_point (data = Clean, 
            aes(x=Longitude, y=Latitude, color=Climate_Hazard),
            alpha = 7, size=5)+ 
  theme(axis.title.x = element_blank(),
        axis.title.y = element_blank(), axis.text = element_blank(), 
        plot.title = element_text(hjust = 0.5, size = 17, face ="bold"),
        legend.text = element_text(size = 10),
        legend.title = element_text(size = 13, face = "bold"))+

 labs(title = "Global Mapping of the Studies Implementing Adaptation Interventions to Protect Maternal and Child Health")
  


