# ETL Sales Data Pipeline 🚀

## Overview
This project demonstrates an end-to-end ETL (Extract, Transform, Load) pipeline built using Python and Snowflake concepts.

The pipeline processes raw sales data, performs data cleaning and transformation, and outputs a structured dataset ready for analysis.

---

## Pipeline Flow
1. **Extract**
   - Load raw sales data from CSV files

2. **Transform**
   - Standardize column names
   - Convert date columns to datetime format
   - Create new features:
     - `total_sales`
     - `delivery_days`
   - Clean and structure the dataset

3. **Load**
   - Save the transformed data into a processed CSV file

---

## Snowflake Work (Data Ingestion)
- Created stages and uploaded data using PUT
- Queried staged data before loading
- Loaded data into tables using `COPY INTO`
- Handled real-world issues:
  - CSV parsing errors
  - Encoding issues (invalid UTF-8)
  - File reloading using `FORCE`

---

## Tech Stack
- Python (Pandas)
- SQL
- Snowflake

---

## Project Structure
```
data/
├── raw_data/
├── processed_data/

scriptss/
├── extract.py
├── transform.py
├── load.py
├── pipeline.py

notebookss/
├── explorationnnn.ipynb
```
---

## How to Run
```bash
python scripts/pipeline.py
```
---

## Key Learnings
- Building modular ETL pipelines
- Data cleaning using Pandas
- Handling messy real-world datasets
- Debugging ingestion issues in Snowflake

```Folder naming differences are due to local development environment constraints.```