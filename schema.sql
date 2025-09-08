CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(200),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(20), -- Savings/Current
    balance DECIMAL(15,2) DEFAULT 0.00
);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    type VARCHAR(20), -- Deposit/Withdrawal
    amount DECIMAL(15,2),
    transaction_date DATE
);
