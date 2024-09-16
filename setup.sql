DROP TABLE IF EXISTS branch;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS loan; 
DROP TABLE IF EXISTS savings_account;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS saves;
DROP TABLE IF EXISTS borrows;

CREATE TABLE branch (
    branch_id INTEGER PRIMARY KEY,
    branch_name VARCHAR(100),
    street VARCHAR(100),
    building_number INTEGER,
    city VARCHAR(100),
    phone_number VARCHAR(15),
    opening_hours VARCHAR(50)
);

CREATE TABLE customer (
    customer_id INTEGER PRIMARY KEY,  
    street VARCHAR(100),
    house_number INTEGER,
    city VARCHAR(100),
    country VARCHAR(100),
    phone_number VARCHAR(15),
    date_of_birth DATE
);

CREATE TABLE loan (
    loan_number INTEGER PRIMARY KEY,
    branch_id INTEGER,
    amount DECIMAL(10, 2),
    loan_type VARCHAR(50),
    interest_rate DECIMAL(5, 2),
    start_date DATE,
    end_date DATE,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (branch_id) REFERENCES branch(branch_id)
);

CREATE TABLE savings_account (
    account_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    branch_id INTEGER,
    account_type VARCHAR(50),
    balance DECIMAL(12, 2),
    creation_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (branch_id) REFERENCES branch(branch_id)
);

CREATE TABLE employee (
    employee_id INTEGER PRIMARY KEY, 
    name VARCHAR(100),
    position VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE,
    branch_id INTEGER,
    FOREIGN KEY (branch_id) REFERENCES branch(branch_id)
);

CREATE TABLE saves (
    customer_id INTEGER,
    account_id INTEGER,
    PRIMARY KEY (customer_id, account_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (account_id) REFERENCES savings_account(account_id)
);

CREATE TABLE borrows (
    customer_id INTEGER,
    loan_number INTEGER,
    borrow_date DATE,  
    PRIMARY KEY (customer_id, loan_number),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (loan_number) REFERENCES loan(loan_number)
);

