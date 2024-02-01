library("pheatmap")
library(RColorBrewer)


data_matrix <- matrix(c(
  1,	0,	0,	0,	0,	0,	0,	0,	0,
  2,	0,	1,	0,	0,	0,	1,	1,	0,
  1,	0,	0,	0,	0,	0,	0,	0,	0,
  0,	1,	0,	0,	0,	0,	0,	0,	0,
  0,	0,	1,	0,	0,	0,	0,	0,	0,
  0,	0,	0,	1,	0,	0,	0,	0,	0,
  0,	0,	0,	0,	1,	0,	0,	0,	0,
  0,	0,	0,	0,	0,	1,	0,	0,	0,
  1,	0,	0,	0,	0,	0,	0,	0,	0,
  0,	0,	0,	0,	0,	0,	1,	0,	0,
  0,	0,	0,	0,	1,	0,	0,	0,	0,
  0,	0,	0,	0,	0,	0,	0,	0,	1,
  0,	0,	0,	0,	1,	0,	0,	0,	0,
  0,	0,	0,	0,	1,	0,	0,	0,	0,
  0,	0,	0,	0,	3,	0,	0,	0,	0
  ), nrow = 15, byrow = TRUE)

  row.names (data_matrix) = c("Home remidition",
                "Educational intervention",
                "Air filtration intervention",
                "Intervention package to improve indoor environment",
                "Nurse Taking on Readiness Measure (N-TORM)",
                "Climate change risk communication",
                "Integrated environmental intervention package",
                "Long lasting insecticide treated nets",
                "Bioethanol cooking fuel",
                "Chemoprophylaxis (Dihydroartemisinin-Piperaquine)",
                "Mobile phone based text messages",
                "Vitamin A supplementation",
                "Emission trading system (ETS)",
                "Air clean plan", 
                "Portable HEPA Filter"
  )
colnames(data_matrix)= c ("Indoor air pollution",	"Environmental allergens",	
                          "Extreme weather events",	"General climate change",	
                          "Ambient air pollution","Rainfall anomaly",
                          "Flood",	"Extreme heat",	"Tornado" 
)



pheatmap(data_matrix, display_numbers = TRUE, 
         number_color = "darkblue", fontsize = 16, 
         number_format = "%d",border_color = "blue",fontsize_number = 14, 
         legend= FALSE,
         cluster_rows = FALSE, cluster_cols = FALSE, angle_col=315, 
         color = colorRampPalette(c("lightgreen", "white", "orange"))(4))

