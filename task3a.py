import sqlite3
import pandas

path = r"bank.db" #path to db

#try to establish connection
try:
    conn = sqlite3.connect(path)
except Exception:
    raise ConnectionError

#create cursor for excecution on db
cur = conn.cursor()

#queries from queries.sql in python string format
queries = [
    """SELECT *
    FROM employee
    LEFT OUTER JOIN branch
    ON employee.branch_id = branch.branch_id;""",

    """SELECT branch_id, AVG(salary)
    FROM employee
    GROUP BY branch_id;""",

    """SELECT branch_id, avg_salary
    FROM (
            SELECT branch_id, AVG(salary) AS avg_salary
            FROM employee
            GROUP BY branch_id
        )
    WHERE avg_salary > 35000;"""
]

#loop over queries and fetch results
for query in queries:
    try:
        #result
        res = cur.execute(query)   #excecute query
        res = res.fetchall()       #retrieve all results
        results = [i for i in res] #put it into python list
        print(results)
    except Exception:
        print("error")
        continue


#close connection
conn.close()