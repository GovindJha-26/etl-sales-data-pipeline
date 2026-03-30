import pandas as pd

def transform_data(df):
    # Rename columns
    df.columns = [col.lower().replace(" ", "_") for col in df.columns]

    # Convert date columns
    df['order_date'] = pd.to_datetime(df['order_date'])
    df['ship_date'] = pd.to_datetime(df['ship_date'])

    # Create new features
    df['total_sales'] = df['sales'] * df['quantity']
    df['delivery_days'] = (df['ship_date'] - df['order_date']).dt.days

    return df