# Fish Plot for Tumor Clonal Evolution

### This repository provides a complete guide to generating Fish Plot for Clonal Evolution.

## Overview
Fishplot is a visualization tool used to represent tumor clonal evolution over multiple timepoints. It shows how different clones expand, shrink, or emerge during disease progression or treatment. By displaying clone proportions in smooth, layered shapes, fishplots provide a clear and intuitive way to understand the dynamics and relationships among evolving tumor subpopulations.
## Dataset Requirements
You need three input files, each uploaded separately:
1. Timepoints: 
A file containing one timepoint per line, e.g.:
0,30,75,150
2. Fraction Table (Matrix): 
Each row corresponds to a clone, and each column corresponds to a timepoint. Values represent the fraction/proportion of that clone at each time. Example:
100,45,0,0
2,0,0,0
2,0,2,1
98,0,95,40
3. Parent Vector: 
Lists each clone's parent clone (0 = no parent):
0,1,1,3


## Step-by-Step Tutorial
1. Install and Load Packages 

   First, install and load the required packages. The devtools package lets you install the fishplot package from GitHub, and the fishplot package is responsible      for generating the clonal evolution visualization and ggplot2 package is required to generate the plot.

2. Upload the Timepoints File 

   Next, upload your timepoints file. When you select the file using file.choose(), R reads the file and extracts the first column as a numeric vector. This vector    represents the sample collection days or time intervals.

3. Upload the Fraction Table File  

   After that, upload your fraction table file. This file contains the proportions of each clone across all timepoints. Each row corresponds to one clone. Once the    file is read, you may convert it into a matrix if required, because fishplot expects the clone fractions in matrix form.

4. Upload the Parents File  

   Then, upload your parents file. This file lists the parent of each clone. Reading the file and converting the column into numeric form ensures that fishplot        receives a proper parent-child relationship structure.

5. Create the Fish Object 

   Once all input files are loaded, create the fish object. This step combines the fraction table, parents, and timepoints into a single fishplot structure. It is     important that the number of rows in the fraction table matches the length of the parents vector, and the number of columns matches the length of the timepoints    vector.

6. Assign Colors (Optional)  

   After creating the fish object, you can assign colors if you want to customize the appearance. You must provide one color per clone.

7. Layout Clone Shapes  

   Next, use the layoutClones() function to calculate the positions and shapes of each clone. This prepares the fishplot for visualization.

8. Generate the Fishplot  

   Finally, generate the fishplot. The function fishPlot() draws the clonal evolution diagram using smooth boundaries, vertical timepoint lines, and timepoint         labels. A title is added at the bottom of the plot to describe the analysis visually.

## Use Cases
1. Tumor Evolution Studies 

   Fishplots help visualize how different clones grow or shrink over time in a tumor. This makes it easy to understand how cancer evolves during disease               progression.
3. Drug Response Tracking  

   By comparing clone proportions before and after treatment, fishplots reveal which clones respond or resist therapy. This helps identify treatment-resistant         populations.
5. Longitudinal Sequencing Analysis 

   Fishplots show changes in clone frequencies across multiple sequencing timepoints. This makes temporal patterns and clonal shifts easy to interpret.
7. Single-Cell Lineage Dynamics 

   Fishplots display relationships between clones derived from single-cell data. They help interpret developmental or evolutionary branching patterns.
9. Evolutionary Modeling and Simulation  

   Model-generated clone frequencies can be visualized to validate evolutionary predictions. Fishplots help compare simulation outputs with expected biological        behavior.
