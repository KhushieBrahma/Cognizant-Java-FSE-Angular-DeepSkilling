CREATE TABLE accounts (
    account_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(100),
    account_type VARCHAR2(20),
    balance NUMBER
);

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    employee_name VARCHAR2(100),
    department VARCHAR2(50),
    salary NUMBER
);
