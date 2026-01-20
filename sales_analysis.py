import pandas as pd

df = pd.read_csv('../data/sales_data.csv')
print(df.head())

# Summary statistics
print(df.describe())

# Product-wise revenue
product_revenue = df.groupby('Product')['TotalRevenue'].sum()
print(product_revenue)
