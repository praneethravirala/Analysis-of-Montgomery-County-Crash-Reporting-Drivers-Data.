# Analysis of Montgomery County Crash Reporting Drivers Data

## Project Overview
This project analyzes the causes of road crashes in **Montgomery County** using data from the **Automatic Crash Reporting System (ACRS)**. The objective is to identify factors contributing to accidents, enable preventive measures, and assist in making road infrastructure safer through policy and engineering improvements.

## Dataset
- **Name:** Montgomery County Crash Reporting Drivers Dataset
- **Size:** 167,208 rows × 43 columns
- **Features:**
  - **Nominal:** Weather, Light, Driver At Fault
  - **Ordinal:** Driver Substance Abuse, Injury Severity
  - **Ratio:** Speed Limit
  - **Interval:** Location

## Project Phases & Tools Used
### 1. Data Cleaning *(Python, SQL, MS Excel)*
- Removed null values and imputed missing data
- Dropped unnecessary columns

### 2. Data Transformation *(Python)*
- Converted date-time variables
- Standardized categorical variables

### 3. Statistical Analysis *(SQL, MySQL Workbench)*
- Grouping, Min, Max, Mode calculations
- Identified accident trends based on weather, speed limit, and light conditions

### 4. Data Visualization & Interpretation *(R, ggplot2, dplyr, caret)*
- **Univariate Analysis:** Frequency distributions of accident factors
- **Bivariate Analysis:** Relationship between Injury Severity and Speed Limit
- **Multivariate Analysis:** Weather, Light, and Speed Limit impact on accident severity

## Key Findings
- **Primary Causes of Accidents:** Driver fault, adverse weather, poor lighting conditions
- **Impact of Speed Limit:** Fatal injuries correlate with higher speed limits (avg. 38 mph)
- **Accident Frequency:** Most accidents occur in **daylight with clear weather conditions**

## Project Files
📂 **Data Analysis.ipynb** - Jupyter Notebook for data cleaning and transformation  
📂 **Database.sql** - SQL queries for statistical analysis  
📂 **DataVisualisations.R** - R script for visualization and insights  
📂 **ProjectReport.pdf** - Detailed project report  
📂 **ProjectPresentation.pptx** - Presentation summarizing key findings  

## Contributors
- **Praneeth Ravirala**

