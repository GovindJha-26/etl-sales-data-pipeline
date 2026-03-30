import pandas as pd

def load_data(df, path):
    df.to_csv(path, index=False)