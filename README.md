# 🚦 Data Engineering Zoomcamp 2025 Project – U.S. Traffic Accidents Pipeline & Dashboard

## 🔍 Project Overview
This project is part of the Data Engineering Zoomcamp 2025. It demonstrates an end-to-end batch data pipeline built using modern data tools and cloud services. It processes U.S. traffic accident data from ingestion to visualization.

## 🧰 Tech Stack
- **Google Cloud Storage (GCS)** – Raw and cleaned data storage
- **BigQuery** – Cloud data warehouse for querying and analytics
- **dbt** – Data transformation and modeling
- **Python & Pandas** – Data preprocessing
- **Google Looker Studio** – Interactive dashboard and reporting

## ⚙️ Pipeline Steps

1. **Ingest Raw Data**
   - Source: [US Accidents Dataset on Kaggle](https://www.kaggle.com/datasets/sobhanmoosavi/us-accidents)
   - Upload to Google Cloud Storage

2. **Data Cleaning & Preprocessing**
   - Clean using Python + Pandas
   - Save cleaned CSV locally
   - Upload `cleaned_accidents.csv` to GCS

3. **Data Warehouse Loading**
   - Load cleaned CSV to BigQuery via Python script

4. **Data Transformation (dbt)**
   - Run `dbt run` to model and clean the data further inside BigQuery

5. **Visualization (Looker Studio)**
   - Create a dashboard to analyze trends by time, location, and weather

## 💻 How to Run This Project

```bash
# Step 1: Clone the repo
git clone https://github.com/your-username/data-engineering-zoomcamp-2025-project.git

# Step 2: Setup Python environment (optional)
pip install -r requirements.txt

# Step 3: Upload data to GCS manually or using GCP CLI

# Step 4: Load into BigQuery using provided script
python scripts/load_to_bigquery.py

# Step 5: Run dbt transformations
cd dbt_project
dbt run

# Step 6: Open dashboard in Looker Studio
