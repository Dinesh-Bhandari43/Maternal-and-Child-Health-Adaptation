
library (igraph)
library(networkD3)
library (readr)


links<- read_csv("//ad.monash.edu/home/User091/dbha0027/Desktop/Sankey/links1.csv")
links <- as.data.frame(links)
nodes<- read_csv("//ad.monash.edu/home/User091/dbha0027/Desktop/Sankey/nodes1.csv")
nodes <- as.data.frame(nodes)

sankeyNetwork(Links = links, Nodes = nodes, Source = "source",
              Target = "target", Value= "value", NodeID = "name",
              units = "TWh", fontSize = 12, nodeWidth = 50, iterations =5)

