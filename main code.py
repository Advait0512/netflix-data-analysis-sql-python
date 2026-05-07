import pandas as pd
import mysql.connector
import numpy as np

# Load dataset
df = pd.read_csv("kaggle data set/netflix_titles.csv")

# Replace NaN with None
df = df.replace({np.nan: None})

# Connect to MySQL
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="ENTER_YOUR_PASSWORD_HERE",#GENREALLY its 12345678 or admin123
    database="netflix_db"
)

cursor = conn.cursor()

# Insert data
for i, row in df.iterrows():
    sql = """
    INSERT INTO netflix VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
    """
    cursor.execute(sql, tuple(row))

conn.commit()

print("Data inserted successfully!")
