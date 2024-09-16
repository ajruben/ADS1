DROP TABLE IF EXISTS branch;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS loan; 
DROP TABLE IF EXISTS savings_account;
DROP TABLE IF EXISTS employee;

CREATE TABLE branch(
    branch_id INTEGER PRIMARY KEY,
    branch_name TEXT,
    street TEXT,
    building_number INTEGER,
    city TEXT
);

CREATE TABLE customer(
    customer_id INTEGER PRIMARY KEY,
    street TEXT,
    house_number INTEGER,
    city TEXT,
    country TEXT
);

CREATE TABLE loan(
    loan_number INTEGER PRIMARY KEY,
    branch_name TEXT,
    amount REAL
);

CREATE TABLE savings_account(
    account_id INTEGER PRIMARY KEY
);

CREATE TABLE employee(
    employee_id INTEGER PRIMARY KEY
);