
--newCustomers
INSERT INTO newCustomers (customer_id, name, address, phone, email)
VALUES 
(1, 'Ravi Sharma', 'Delhi', '9876543210', 'ravi@mail.com'),
(2, 'Sneha Kapoor', 'Mumbai', '9123456780', 'sneha@mail.com'),
(3, 'Aman Verma', 'Jaipur', '9812345678', 'aman@mail.com'),
(4, 'Neha Gupta', 'Bangalore', '9998765432', 'neha@mail.com'),
(5, 'Rahul Mehta', 'Hyderabad', '8881234567', 'rahul@mail.com'),
(6, 'Anjali Singh', 'Chennai', '9004561237', 'anjali@mail.com'),
(7, 'Mohit Bansal', 'Pune', '9765432109', 'mohit@mail.com'),
(8, 'Priya Yadav', 'Lucknow', '9321456780', 'priya@mail.com'),
(9, 'Karan Malhotra', 'Delhi', '9543210987', 'karan@mail.com'),
(10, 'Simran Kaur', 'Amritsar', '9811122233', 'simran@mail.com')


-- Accounts (10 rows)
INSERT INTO Accounts VALUES (101, 1, 'Savings', 150000.00);
INSERT INTO Accounts VALUES (102, 2, 'Current', 250000.00);
INSERT INTO Accounts VALUES (103, 3, 'Savings', 120000.00);
INSERT INTO Accounts VALUES (104, 4, 'Savings', 80000.00);
INSERT INTO Accounts VALUES (105, 5, 'Current', 500000.00);
INSERT INTO Accounts VALUES (106, 6, 'Savings', 60000.00);
INSERT INTO Accounts VALUES (107, 7, 'Savings', 140000.00);
INSERT INTO Accounts VALUES (108, 8, 'Current', 180000.00);
INSERT INTO Accounts VALUES (109, 9, 'Savings', 90000.00);
INSERT INTO Accounts VALUES (110, 10, 'Current', 300000.00);

-- Transactions (15 rows)
INSERT INTO Transactions VALUES (1001, 101, 'Deposit', 50000.00, '2025-09-01');
INSERT INTO Transactions VALUES (1002, 101, 'Withdrawal', 10000.00, '2025-09-02');
INSERT INTO Transactions VALUES (1003, 102, 'Deposit', 200000.00, '2025-09-02');
INSERT INTO Transactions VALUES (1004, 102, 'Withdrawal', 50000.00, '2025-09-03');
INSERT INTO Transactions VALUES (1005, 103, 'Deposit', 70000.00, '2025-09-03');
INSERT INTO Transactions VALUES (1006, 103, 'Deposit', 20000.00, '2025-09-04');
INSERT INTO Transactions VALUES (1007, 104, 'Deposit', 30000.00, '2025-09-02');
INSERT INTO Transactions VALUES (1008, 104, 'Withdrawal', 5000.00, '2025-09-04');
INSERT INTO Transactions VALUES (1009, 105, 'Deposit', 400000.00, '2025-09-01');
INSERT INTO Transactions VALUES (1010, 105, 'Withdrawal', 50000.00, '2025-09-02');
INSERT INTO Transactions VALUES (1011, 106, 'Deposit', 20000.00, '2025-09-03');
INSERT INTO Transactions VALUES (1012, 107, 'Deposit', 100000.00, '2025-09-03');
INSERT INTO Transactions VALUES (1013, 108, 'Withdrawal', 30000.00, '2025-09-04');
INSERT INTO Transactions VALUES (1014, 109, 'Deposit', 40000.00, '2025-09-05');
INSERT INTO Transactions VALUES (1015, 110, 'Deposit', 250000.00, '2025-09-05');
