-- Query 1: Get account with highest balance
SELECT TOP 1
    account_id,
    MAX(balance) AS MaxBalance
FROM Accounts
GROUP BY account_id;

-- Query 2: Total deposits
SELECT
    type,
    SUM(amount) AS TotalAmount
FROM Transactions
WHERE type = 'Deposit'
GROUP BY type;

-- Query 3: Transactions greater than 100000
SELECT
    account_id,
    type,
    amount
FROM Transactions
WHERE amount > 100000;

-- Query 4: Rank accounts by balance
SELECT
    customer_id,
    account_type,
    balance,
    RANK() OVER (ORDER BY balance DESC) AS RankByBalance
FROM Accounts;

-- Query 5: Top 3 accounts by balance within each account type
SELECT
    customer_id,
    account_type,
    account_id,
    balance
FROM (
    SELECT
        customer_id,
        account_type,
        account_id,
        balance,
        ROW_NUMBER() OVER (
            PARTITION BY account_type
            ORDER BY balance DESC
        ) AS RN
    FROM Accounts
) t
WHERE RN <= 3;
--Query6: cumulative deposit amount for customers
SELECT 
    NC.name,
    NC.address,
    A.balance,
    SUM(A.balance) OVER(
        PARTITION BY NC.customer_id   
        ORDER BY A.account_id    
    ) AS running_total
FROM Accounts A
JOIN newCustomers NC
    ON A.account_id = NC.customer_id;
--Query7: compare the balance of each customer with average balance of all customers
SELECT 
    balance,
    AVG(balance) OVER() avgbalance,
    customer_id
FROM Accounts;
--Query8: display the previous and the next transaction amount of the same acoount
SELECT
    account_id,
    type,
    amount,
    LAG(amount) OVER (PARTITION BY account_id ORDER BY transaction_date) AS PREVIOUSAMOUNT,
    LEAD(amount) OVER (PARTITION BY account_id ORDER BY transaction_date) AS NEXTAMOUNT
FROM Transactions;

-- Query 9: Percentage of balance per transaction type
SELECT 
    balance,
    T.type,
    (A.balance * 100 / SUM(balance) OVER (PARTITION BY T.type)) AS PERCENTAGE
FROM Accounts A
JOIN Transactions T
    ON A.account_id = T.account_id;


-- Query 10: Difference between max and min transaction amount per customer
SELECT 
    C.name,
    MAX(T.amount) - MIN(T.amount) AS difference
FROM Transactions T
JOIN Accounts A 
    ON T.account_id = A.account_id
JOIN newCustomers C 
    ON A.customer_id = C.customer_id
GROUP BY C.name;


--Query11: first and last transaction per account

SELECT account_id, transaction_id, amount, transaction_date
FROM (
    SELECT *,
           ROW_NUMBER() OVER(PARTITION BY account_id ORDER BY transaction_date ASC) AS first_txn,
           ROW_NUMBER() OVER(PARTITION BY account_id ORDER BY transaction_date DESC) AS last_txn
    FROM Transactions
) t
WHERE first_txn = 1 OR last_txn = 1;

--Query12:highest daily transaction per customer

SELECT customer_id, transaction_date, amount
FROM (
    SELECT A.customer_id,
           T.transaction_date,
           T.amount,
           ROW_NUMBER() OVER(PARTITION BY A.customer_id, T.transaction_date ORDER BY T.amount DESC) AS rnk
    FROM Transactions T
    JOIN Accounts A ON T.account_id = A.account_id
) t
WHERE rnk = 1;






