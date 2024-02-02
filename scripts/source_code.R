# SOURCE CODE

# necessary packages
library(tidyverse)
library(raster)
library(here)
library(rgdal)
library(caTools)
library(magick) # for animation
library(sf)
library(prism)
library(stars)
library(ncdf4)
library(RColorBrewer)
library(proj4)
library(naniar)
library(ggpp)
library(ggfortify)
library(leaflet)
library(corrplot)
library(GGally)
library(factoextra)
library(cluster)
library(ggpubr)
library(sp)
library(terra)
library(ggridges)
library(av) # to save NBR animation
library(lme4) # for mixed effects models
library(lmerTest)
library(sjPlot) # for tab_model
library(kableExtra)
library(gtools)
library(performance)
library(remef)
library(ggh4x)
library(emmeans)
library(extrafont)
extract = raster::extract
group_by = dplyr::group_by
arrow = ggplot2::arrow

# specifying functions
filter = dplyr::filter
select = dplyr::select

# Elevation bins
elev_low_bins <- c(0,1300,2100,2900,3700) # Old values: 0, 2500, 3000, 3500
elev_upp_bins <- c(1300,2100,2900,3700,5000) # Old values: 2500, 3000, 3500, 5000

# Years to analyze (first year available: 1997)
yrs_arr <- c(1997:2018)

# Elevation raster data
dir <- "/Volumes/Meddens/GitHub Repo/wsu-meddens-lab/data/WBP_MPB" # where to access the dem_clip.tif file
dem_clip2 <- raster(file.path(dir, "dem_clip.tif"))

# ggplot2 themes
getwd()

# Naming variables for facets
spectral_field_var_names <- c(relative_regrowth = 'Relative regrowth',
                              pct_recovery = '% Recovery',
                              delta_nbr = 'Change in NBR',
                              postfire_fitted_slope = 'Post-fire fitted slope',
                              grass.pct = '% Grass',
                              herb.pct = '% Herb',
                              shrub.pct = '% Shrub',
                              seedling.pct = '% Juvenile conifer',
                              log.regen.density = 'Log regen. density',
                              regen.density = 'Regeneration density',
                              log.seedling.density = 'Log seedlingdensity',
                              cwd_present = 'CWD (1981-2010)',
                              cwd_future = 'Future CWD (2041-2070)',
                              cwd_diff = 'Diff. in CWD')

field_var_names <- c(grass.pct = '% Grass',
                     herb.pct = '% Herb',
                     shrub.pct = '% Shrub',
                     seedling.pct = '% Juvenile conifer',
                     green.pct = '% Green',
                     npv.pct = '% NPV',
                     seedling.density = 'Seedling density',
                     log.seedling.density = 'Log seedling density',
                     log.regen.density = 'Log regen. density',
                     aspect = 'Aspect',
                     slope = 'Slope',
                     densiometer = 'Densiometer',
                     regen.density = 'Regen. density')

spectral_var_names <- c(relative_regrowth = 'Relative regrowth',
                        pct_recovery = '% Recovery',
                        delta_nbr = 'Change in NBR',
                        postfire_fitted_slope = 'Post-fire fitted slope')

spectral_clim_var_names <- c(pct_recovery = '% Recovery',
                             postfire_fitted_slope = 'Post-fire fitted slope',
                             postfire_ppt = 'Post-fire precipitation',
                             postfire_tmean = 'Post-fire temperature',
                             hli = 'CHILI')

climate_var_names <- c(precip = 'Mean annual precipitation (30yr normal)',
                       tmean = 'Mean annual temperature (30yr normal)',
                       vpdmax = 'Maximum VPD (30yr normal)',
                       hli = 'Cont. heat-insolation load index (CHILI)')

climate_var_names2 <- c(postfire_ppt = 'Post-fire precipitation',
                       postfire_tmean = 'Post-fire temperature',
                       postfire_vpdmax = 'Post-fire maximum VPD',
                       elevation = 'Elevation',
                       postfire_fitted_slope = 'Post-fire fitted slope',
                       cwd_future = 'Projected CWD (2041-2070)',
                       cwd_present = 'Average CWD (1981-2010)')

pf_climate_var_names <- c(postfire_ppt = 'Mean annual precip.',
                          postfire_tmax = 'Mean annual Tmax',
                          postfire_tmin = 'Mean annual Tmin',
                          postfire_vpdmax = 'Mean annual VPDmax',
                          postfire_vpdmin = 'Mean annual VPDmin',
                          postfire_tmean = 'Mean annual Tmean')
