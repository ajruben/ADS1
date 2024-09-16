import sqlite3
import pandas as pd

path = r"bank.db" #path to db

#try to establish connection
try:
    conn = sqlite3.connect(path)
except Exception:
    raise ValueError

#create cursor for excecution on db
cur = conn.cursor()

#queries from queries.sql in python string format
query = """
        SELECT *
        FROM customer;
        """


#loop over queries and fetch results

try:
    #result
    res = cur.execute(query)   #excecute query
    res = res.fetchall()       #retrieve all results
    results = [i for i in res] #put it into python list
    print(results)
except Exception:
    raise ConnectionError

#need sqlalchemy
df = pd.read_sql_table('customer', 'sqlite:///bank.db')
print(df)
#close connection
conn.close()