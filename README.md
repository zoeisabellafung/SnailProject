# Hofmann Lab Snail Project Calibration Code
Here you will find the repository for code that can be used to calibrate pH and temperature data collected along the California coast. The repository is maintained by Zoë Fung (GitHub: [@zoeisabellafung](https://github.com/zoeisabellafung)) at the University of California, Santa Barbara.

![alt text](/media/teggy.jpg?raw=true)
###### photo by Amelia Ritger; *Tegula funebralis*, Black turban snail

![alt text](/media/bodega-sun.jpg?raw=true)
###### photo by Amelia Ritger; Sensor collecting pH and temperature data in Bodega Bay, CA

## Abstract
This code was written under the guidance of Amelia Ritger (GitHub: [@ameliaritger](https://github.com/ameliaritger)), in the scope of her research regarding large-scale patterns of intraspecific variation in the black turban snail (*Tegula funebralis*). Ritger's research uses temperature and pH data collected from various sensors within the California Current Large Marine Ecosystem to analyze the resiliency of the turban snail to environmental change. To use this script, upload a dataframe containing the values collected during calibration and a dataframe containing the values collected in the field. The script will generate a .csv file with the calibrated temperature and pH values as well as the date/time associated with each measurement.

## Code
file name | description 
---|-----------
Hofmann Lab Code.Rmd | customizable R script that converts raw temperature and pH values (*in the form of voltages*) to standard units and calibrates the values against known TRIS values

## How to use the script
##### Please follow the metadata guidelines below when loading your data into the R script.
1. Download the required packages, located at the top of the script (install.packages(" "))
2. Enter the file name of your .csv sheet with values collected during calibration under "tris" (tris <- "your_file_name.csv")
3. Enter the file name of your .csv sheet with values collected in the field under "raw" (raw <- "your_file_name_.csv")
4. Name the file that the script will automatically add to your working directory after calibrating the values you collected in the field under "filename" (filename <- "your_file_name")

##### Note: do not add ".csv" to the entry under "filename"; it will be automatically added by the script
5. Run the script! The generated file will contain calibrated pH values and temperature values, and the corresponding date/time for each measurement

## Metadata 
### For the values collected during calibration
Each row represents one measurement taken	

variable | description
---|---
Date | Date corresponding measurement was taken
Time | Time corresponding measurement was taken
Voltage 1	| mV, corresponding to site pH
Voltage 2	| mV, corresponding to the batteries of the probe
Voltage 3 | mV, corresponding to the batteries of the probe
Voltage 4 | mV, corresponding to the temperature

### For the values collected in the field
Each row represents one measurement taken	

variable | description
---|---
Date | Date corresponding measurement was taken
Time | Time corresponding measurement was taken
Voltage 1	| mV, correponsding to site pH
Voltage 2	| mV, corresponding to the batteries of the probe
Voltage 3 | mV, corresponding to the batteries of the probe
Voltage 4 | mV, corresponding to the temperature

### For the final .csv file generated by the script
Each row represents one measurement taken	

variable | description
---|---
Date, Time |	Date and time corresponding raw measurement was taken
Temperature	| Calibrated temperature (ºC) of the environment
pH	| Calibrated pH of the environment

*Temperature and pH are calibrated against known TRIS values