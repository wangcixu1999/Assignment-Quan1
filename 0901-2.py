import pandas as pd
df = pd.read_csv("C:/WindowsD/TAM/SLS/0910/archive/WeatherEvents_Jan2016-Dec2022.csv")
"C:\WindowsD\TAM\SLS\0910\archive\WeatherEvents_Jan2016-Dec2022.csv"
df.head() 
df.info() #→ structure, types, nulls
"""Function: Display the overall structure of the DataFrame.
Output includes:
- Column names
- Number of non-null values
- Data types of each column (int64, float64, object, etc.)
- Total number of rows and columns
- Memory usage"""
df.describe() #→ summary stats
df.isnull().sum() #→ missing values