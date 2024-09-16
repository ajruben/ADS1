INSERT INTO branch(
    branch_id, 
    branch_name, 
    street, 
    building_number, 
    city, 
    phone_number,
    opening_hours
) 
VALUES
    (1, 'Dunder Mifflin Banking Company, Inc', 'Slough Avenue', 20, 'Scranton', '717 555 0177', '9-17'),
    (2, 'Baking and Banking', 'Bakerstreet', 221, 'London', '010 737 1373', '9-17'),
    (3, 'Krusty Krab Bank', 'Anchor Way', 1, 'Bikini Bottom', '555 0199', '9-17');

INSERT INTO customer(
    customer_id,
    first_name,
    second_name,
    street,
    house_number,
    city,
    country,
    phone_number,
    date_of_birth
) 
VALUES
    (1, 'Michael', 'Scott', 'Slough Avenue', 1725, 'Scranton', 'USA', '717-555-0101', '1979-03-15'),
    (2, 'Jim', 'Halpert', 'Beech Street', 236, 'Scranton', 'USA', '717-555-0102', '1981-10-14'),
    (3, 'Pam', 'Beesly', 'Main Street', 411, 'Scranton', 'USA', '717-555-0103', '1985-06-27'),
    (4, 'Dwight', 'Schrute', 'Walnut Street', 700, 'Scranton', 'USA', '717-555-0104', '1980-02-19'),
    (5, 'Angela', 'Martin', 'Maple Street', 300, 'Scranton', 'USA', '717-555-0105', '1978-01-25'),
    (6, 'Sherlock', 'Holmes', 'Baker Street', 221, 'London', 'UK', '020-737-0106', '1976-01-06'),
    (7, 'John', 'Watson', 'Queen Anne Street', 5, 'London', 'UK', '020-737-0107', '1974-07-31'),
    (8, 'Mycroft', 'Holmes', 'Gloucester Place', 16, 'London', 'UK', '020-737-0108', '1971-05-08'),
    (9, 'Mrs.', 'Hudson', 'Westminster Bridge Road', 35, 'London', 'UK', '020-737-0109', '1972-02-16'),
    (10, 'James', 'Moriarty', 'Whitehall', 10, 'London', 'UK', '020-737-0110', '1973-04-13'),
    (11, 'SpongeBob', 'SquarePants', 'Conch Street', 124, 'Bikini Bottom', 'Pacific Ocean', '555-0101', '1986-07-14'),
    (12, 'Patrick', 'Star', 'Conch Street', 120, 'Bikini Bottom', 'Pacific Ocean', '555-0102', '1985-02-26'),
    (13, 'Squidward', 'Tentacles', 'Conch Street', 122, 'Bikini Bottom', 'Pacific Ocean', '555-0103', '1977-10-09'),
    (14, 'Sandy', 'Cheeks', 'Treedome Park', 1, 'Bikini Bottom', 'Pacific Ocean', '555-0104', '1988-11-17'),
    (15, 'Eugene', 'Krabs', 'Anchor Way', 2, 'Bikini Bottom', 'Pacific Ocean', '555-0105', '1942-09-25');

INSERT INTO employee (
    employee_id, 
    first_name,
    second_name,
    position,
    salary,
    hire_date,
    branch_id
) 
VALUES
    (1, 'Stanley', 'Hudson', 'Sales Representative', 45000.00, '2005-04-01', 1),
    (2, 'Kevin', 'Malone', 'Accountant', 42000.00, '2007-06-15', 1),
    (3, 'Greg', 'Lestrade', 'Detective Inspector', 50000.00, '2010-02-20', 2),
    (4, 'Molly', 'Hooper', 'Pathologist', 48000.00, '2011-09-25', 4),
    (5, 'Pearl', 'Krabs', 'Intern', 12000.00, '2022-07-01', 3),
    (6, 'Sheldon', 'Plankton', 'Competitor Spy', 30000.00, '2023-01-10', 3);

INSERT INTO loan (
    loan_number,
    branch_id,
    branch_name,
    amount,
    loan_type,
    interest_rate,
    start_date,
    end_date,
    customer_id
) 
VALUES
    (1, 1, 'Dunder Mifflin Banking Company, Inc', 5000.00, 'Personal Loan', 5.75, '2022-01-15', '2025-01-15', 2), -- Jim Halpert
    (2, 2, 'Baking and Banking',15000.00, 'Home Loan', 3.50, '2021-06-10', '2041-06-10', 7),   -- John Watson
    (3, 3, 'Krusty Krab Bank', 2000.00, 'Business Loan', 4.25, '2023-03-01', '2028-03-01', 13), -- Squidward Tentacles
    (4, 1, 'Dunder Mifflin Banking Company, Inc', 7500.00, 'Car Loan', 4.00, '2023-05-20', '2028-05-20', 3),     -- Pam Beesly
    (5, 3, 'Krusty Krab Bank', 3000.00, 'Education Loan', 2.75, '2023-09-05', '2027-09-05', 12); -- Patrick Star

INSERT INTO savings_account (
    account_id,
    customer_id,
    branch_id,
    account_type,
    balance,
    creation_date
) 
VALUES
    (1, 1, 1, 'Checking', 1200.00, '2020-11-01'),  -- Michael Scott
    (2, 2, 1, 'Savings', 5000.50, '2021-03-15'),   -- Jim Halpert
    (3, 6, 2, 'Savings', 8000.75, '2022-07-23'),   -- Sherlock Holmes
    (4, 11, 3, 'Business', 300.25, '2023-01-10'),  -- SpongeBob SquarePants
    (5, 15, 3, 'Savings', 950.00, '2023-04-14');   -- Eugene Krabs

INSERT INTO saves (
    customer_id,
    account_id
) 
VALUES
    (1, 1),  -- Michael Scott's Checking Account
    (2, 2),  -- Jim Halpert's Savings Account
    (6, 3),  -- Sherlock Holmes' Savings Account
    (11, 4), -- SpongeBob's Business Account
    (15, 5); -- Eugene Krabs' Savings Account

INSERT INTO borrows (
    customer_id,
    loan_number,
    borrow_date
) 
VALUES
    (2, 1, '2022-01-15'),  -- Jim Halpert's Personal Loan
    (7, 2, '2021-06-10'),  -- John Watson's Home Loan
    (13, 3, '2023-03-01'), -- Squidward Tentacles' Business Loan
    (3, 4, '2023-05-20'),  -- Pam Beesly's Car Loan
    (12, 5, '2023-09-05'); -- Patrick Star's Education Loan
