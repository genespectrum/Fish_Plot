#install devtools if you don't have it already for easy installation
#install.packages("devtools")
library(devtools)
#install_github("chrisamiller/fishplot")
library(fishplot)

# Example data (replace with your actual data)
timepoints <- file.choose()
timepoints <- read.csv(timepoints)
timepoints <- as.numeric(timepoints[,1])
timepoints


#provide a matrix with the fraction of each population
#present at each timepoint
frac.table <- file.choose()
frac.table <- read.csv(frac.table)

#provide a vector listing each clone's parent
#(0 indicates no parent)
parents <- file.choose()
parents <- read.csv(parents)
parents <- as.numeric(parents[,1])
parents


#2️⃣ Create fish object
#----------------------------
fish = createFishObject(frac.table_mat, parents, timepoints)

#----------------------------
# 3️⃣ Assign colors properly
#----------------------------
#fish = setCol(fish, c("grey", "red", "blue"))   # ✅ works in all versions

#----------------------------
# 4️⃣ Layout and plot
#----------------------------
fish = layoutClones(fish)

fishPlot(
  fish       = fish,
  shape      = "spline",
  vlines     = timepoints,
  vlab       = c("Day0", "Day30", "Day75", "Day150"),
  title.btm  = "Tumor Clonal Evolution"
)

