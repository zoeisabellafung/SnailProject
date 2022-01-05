Here you will find the repository for code that can be used to calibrate pH and temperature data collected along the California coast. The repository is maintained by Zoë Fung (GitHub: @zoeisabellafung) at the University of California, Santa Barbara.



## Abstract
This code was written under the guidance of Amelia Ritger (GitHub: @ameliaritger), in the scope of her research regarding large-scale patterns of intraspecific variation in the black turban snail (*Tegula funebralis*). Ritger's research uses temperature and pH data collected from various sensors within the California Current Large Marine Ecosystem to analyze the resiliency of the turban snail to environmental change. To use this script, upload a dataframe containing the values collected during calibration and a dataframe containing the values collected in the field. The script will generate a .csv file with the calibrated temperature and pH values as well as the date/time associated with each measurement.

## Code
file name | description 
---|-----------
Hofmann Lab Code.R | customizable R script that converts raw temperature and pH values (*in the form of voltages*) to standard units and calibrates the values against known TRIS values

## Metadata for the final csv created as output from the script

Each row represents one measurement taken	

variable | description
---|---
Date, Time |	Date and time corresponding raw measurement was taken
Temperature	| Calibrated temperature (ºC) of the environment
pH	| Calibrated pH of the environment

*Temperature and pH are calibrated against known TRIS values

## Curious what the experiment looked like?
*Clicking this image will take you to the video*
[![Watch the video](/media/foraging-trial-video.png?raw=true)](https://vimeo.com/165007470)