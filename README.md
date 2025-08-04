# Limited impact of middle shield installation on temperature measurements using TOMST TMS4 sensors in a grassland experiment

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.16677435.svg)](https://doi.org/10.5281/zenodo.16677435)

This repository contains the R/Quarto scripts used to clean and analyze data from a grassland field experiment investigating the effect of adding a middle shield to TOMST TMS4 sensors. The goal was to assess whether this modification influenced microclimate temperature measurements.

All data used in this study are permanently archived on Zenodo to support reproducibility and open science.

---

## 📂 Contents

- `01_Cleaning_Probe_Data.qmd` — Raw data cleaning and formatting
- `02_Analysis.qmd` — Exploratory and statistical analysis

---

## 📦 Data Access

The datasets used in this project are hosted on Zenodo:

- **Microclimate data**  
  [`Bioclive_microclimate_shield_2024.csv`](https://zenodo.org/record/16677435/files/Bioclive_microclimate_shield_2024.csv?download=1)

- **Experimental design metadata**  
  [`bioclive_design.csv`](https://zenodo.org/record/16677435/files/bioclive_design.csv?download=1)

These files are automatically downloaded to the `data/` folder when you run the `.qmd` scripts.

---

## 📜 Citation

If you use this code or dataset, please cite the following:

```bibtex
@dataset{
  title        = {Limited impact of middle shield installation on temperature measurements using TOMST TMS4 sensors in a grassland experiment},
  author       = {Verschoor, Mink R. and Barry, Kathryn E. and Hautier, Yann and van Ginderen, Amber P. W. and Verhoeven, Floris H. A. and Verduyn, Betty P. and Johannes, Rola and Lembrechts, Jonas J.},
  year         = 2025,
  publisher    = {Zenodo},
  doi          = {10.5281/zenodo.16677435},
  url          = {https://doi.org/10.5281/zenodo.16677435}
}
