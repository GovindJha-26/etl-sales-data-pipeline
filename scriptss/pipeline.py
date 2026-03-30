from extract import extract_data
from transform import transform_data
from load import load_data

def run_pipeline():
    try:
        print("Starting pipeline...")
    
        # Extract
        print("Extracting data...")
        df = extract_data('E:/etl-sales-pipeline/data/raw_data/raw_sales.csv')
    
        # Transform
        print("Transforming data...")
        df = transform_data(df)
    
        # Load
        print("Loading data...")
        load_data(df, 'E:/etl-sales-pipeline/data/processed_data/final_sales.csv')
    
        print("Pipeline executed successfully 🚀")

    except Exception as e:
        print("Pipeline failed ❌")
        print("Error:", e)

if __name__ == "__main__":
    run_pipeline()