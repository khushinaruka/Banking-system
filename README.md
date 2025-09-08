# Banking System 💰

## Project Overview
This project is a mini-core banking system designed to manage customers, accounts, and financial transactions.
It demonstrates practical SQL usage for analyzing banking data, performing account management, and detecting high-value or suspicious transactions. 
Ideal for understanding database relationships and querying techniques in a banking context.

## Database Tables

### Customers
Stores customer information.  
**Columns:**  
- `customer_id` (Primary Key)  
- `name`  
- `address`  
- `phone`  
- `email`  

### Accounts
Stores account details linked to customers.  
**Columns:**  
- `account_id` (Primary Key)  
- `customer_id` (Foreign Key)  
- `account_type` (savings/current)  
- `balance`  

### Transactions
Tracks all account transactions.  
**Columns:**  
- `transaction_id` (Primary Key)  
- `account_id` (Foreign Key)  
- `type` (deposit/withdrawal)  
- `amount`  
- `date`  

## Example Queries
- **Highest Balance Account:** Find the account with the maximum balance.  
- **Total Deposits per Customer:** Calculate the sum of all deposits linked to a customer.  
- **Suspicious Transactions:** Identify transactions exceeding ₹1,00,000 in a single day.  

## Use Case
This system allows banks or developers to:  
- Analyze customer accounts efficiently  
- Track deposits and withdrawals  
- Detect potentially suspicious or high-value transactions  
- Practice real-world SQL operations  

## Technologies
- SQL (MySQL / PostgreSQL / SQL Server)

- BY KHUSHI NARUKA
