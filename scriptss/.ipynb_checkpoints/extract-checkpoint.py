import pandas as pd

def extract_data(path):
    df = pd.read_csv(path, encoding='windows-1252')
    return df