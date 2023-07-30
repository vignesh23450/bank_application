create database bank;
use bank;
CREATE TABLE customers (
    account_no INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    address VARCHAR(200)
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    account_no INT,
    transaction_date DATE,
    amount INT,
    amount_balance INT,
    FOREIGN KEY (account_no) REFERENCES customers(account_no)
);


INSERT INTO customers (account_no, first_name, last_name, email, phone_number, address)
VALUES
    (1001, 'John', 'Doe', 'john.doe@example.com', '1234567890', '123 Main St'),
    (1002, 'Jane', 'Smith', 'jane.smith@example.com', '0987654321', '456 Elm St'),
    (1003, 'Michael', 'Johnson', 'michael.johnson@example.com', '9876543210', '789 Oak Ave'),
    (1004, 'Emily', 'Williams', 'emily.williams@example.com', '0123456789', '321 Pine Rd'),
    (1005, 'David', 'Brown', 'david.brown@example.com', '6789012345', '987 Maple Ln'),
    (1006, 'Sarah', 'Taylor', 'sarah.taylor@example.com', '5432167890', '654 Cedar St'),
    (1007, 'Christopher', 'Davis', 'christopher.davis@example.com', '8901234567', '789 Walnut Ave'),
    (1008, 'Jennifer', 'Miller', 'jennifer.miller@example.com', '7654321098', '432 Birch Rd'),
    (1009, 'Matthew', 'Anderson', 'matthew.anderson@example.com', '2345678901', '567 Oak Ave'),
    (1010, 'Amanda', 'Wilson', 'amanda.wilson@example.com', '9012345678', '876 Pine Rd');

INSERT INTO transactions (account_no, transaction_date, amount, amount_balance)
VALUES
    (1001, '2023-07-01', 500, 5000),
    (1002, '2023-07-05', -200, 4800),
    (1003, '2023-07-03', 1000, 7000),
    (1004, '2023-07-07', -500, 6500),
    (1005, '2023-07-02', 300, 4000),
    (1006, '2023-07-06', -150, 3850),
    (1007, '2023-07-04', 800, 9000),
    (1008, '2023-07-08', -300, 8700),
    (1009, '2023-07-05', 200, 3000),
    (1010, '2023-07-09', -100, 2900);
    
    
    SELECT * FROM transactions;

