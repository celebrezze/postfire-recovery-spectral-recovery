# postfire-recovery-spectral-recovery

This repository is intended to store data, figures, and scripts necessary for the analyses and visualizations for the text entitled *A fast spectral recovery does not necessarily indicate post-fire forest recovery* authored by Joe Celebrezze (email: celebrezze@ucsb.edu, personal email: joebrezze@gmail.com), Madeline Franz, Robert Andrus, Amanda Stahl, Michelle Steen-Adams, Arjan Meddens.

A brief note regarding large datasets: Datasets above 100MB in size could not be pushed to the GitHub repository, so certain scripts will not run without adding those datasets to the local drive (climate data, Egley NBR data, Landfire forest cover data, all fires severity). These scripts are *data_wrangling.Rmd* and *field_site_selection.Rmd*. That being said, all of the key scripts for analyses and visualization are able to be ran without this data (with a minor workaround for *clusters_and_eda.Rmd*).

Descriptions for each of the scripts:
*climate_and_scatterplots.Rmd*: this contains comparisons between field data and climate data

*clusters_and_eda.Rmd*: this contains some EDA figures and analyses and the bottom-up and top-down cluster analysis

*data_wrangling.Rmd*: see above note; for data wrangling; bringing together a bunch of different datasets

*field_site_selection.Rmd*: see above note; for site selection process including k-means cluster and analyzing climate data, etc. to ensure that sites were on a climatic gradient

*field_sites_map.Rmd*: maps of fire severity, locations of fires to be compiled in a powerpoint for visualization in the manuscript

*GLMM.Rmd*: this contains all code for generalized linear mixed effects model selection and GLMM for TE vs. non-TE comparison

*gps.data.wrangling.Rmd*: this adds GPS locations to field data

*mem.selection.function.R*: contains functions for GLMM selection, taking every permutation of predictors and whittling out with VIF, selection for AIC and BIC

*sample_random_dist.R*: from Arjan Meddens, a function for a buffered random sample in a given condition (high severity burn)

*source_code.R*: contains necessary packages and naming for facet labels; to be run at the beginning of every script in the setup chunk

*trailing_edge.Rmd*: this contains all code to compare TE and non-TE forests; it is dependent on the chunk of GLMM code relating to TE vs. non-TE

Closing remarks: I hope that this is enough information to make this code useful to whoever wants to use it and apply it to other research questions and the like. Feel free to contact me (Joe, see emails above) if needed and I will try to help with any of it. I try to make my code relatively clean, but this code was only used by me and therefore I did not explain much of the code line-by-line. Happy coding!