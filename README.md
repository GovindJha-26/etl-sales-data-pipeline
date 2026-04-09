# ETL Sales Data Pipeline 🚀

## Overview
This project implements an end-to-end ETL pipeline using Python and Snowflake.

The pipeline extracts raw sales data, performs transformations (feature engineering, cleaning), and loads it into Snowflake for analytical querying.

The system simulates a real-world data engineering workflow including staging, schema management, and data validation.

---

## Architecture

Raw CSV → Python (Transform) → Processed CSV → Snowflake Stage → Snowflake Table → SQL Analytics

---

## Pipeline Flow

### 1. Extract
- Load raw CSV data using Pandas

### 2. Transform
- Standardized column names (snake_case)
- Removed duplicates and handled missing values
- Feature engineering:
  - total_sales = sales * quantity
  - delivery_days = ship_date - order_date

### 3. Load
- Uploaded processed data to Snowflake stage
- Loaded into Snowflake table using COPY INTO
---

## Snowflake Data Ingestion

- Created internal stage for file storage
- Uploaded data using `PUT` command
- Loaded data using `COPY INTO`
- Resolved real-world issues:
  - Column mismatch errors
  - CSV parsing issues (quoted fields)
  - Schema alignment between source and target

---

## Analytical Queries

### Top Customers by Revenue
```sql
SELECT customer_id, SUM(total_sales) AS revenue
FROM sales
GROUP BY customer_id
ORDER BY revenue DESC
LIMIT 5;
```
### Monthly Revenue Trend
```sql
SELECT DATE_TRUNC('month', order_date) AS month,
       SUM(total_sales) AS revenue
FROM sales
GROUP BY month
ORDER BY month;
```
---

## Tech Stack
- Python (Pandas)
- SQL
- Snowflake

---

## Challenges Faced

- Column mismatch between CSV and Snowflake table  
  → Resolved by aligning schema with transformed dataset  

- CSV parsing issues due to commas in product names  
  → Handled using FIELD_OPTIONALLY_ENCLOSED_BY  

- Header misinterpretation during schema inference  
  → Resolved by defining schema explicitly  

- Snowflake PUT command limitations  
  → Used SnowSQL / UI upload correctly  

---

## Limitations

- Pipeline assumes fixed schema
- No automated scheduling (manual execution)
- Not optimized for very large datasets (>GB scale)

---

## Future Improvements

- Add logging and monitoring
- Implement incremental data loading
- Integrate orchestration tools (Airflow)
- Optimize performance using clustering

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
