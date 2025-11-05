-- Active: 1762233800226@@127.0.0.1@3306

SELECT * FROM product;

SELECT * FROM customers;

PRAGMA table_info('product');

CREATE TABLE product (
  order_id INTEGER,
  order_date DATE,
  total_amount REAL
);

INSERT INTO 
  product(order_id, order_date, total_amount)
VALUES
  (1, '2023-07-15', 50.99),
  (2, '2023-07-16', 75.5),
  (3, '2023-07-17', 30.25);

CREATE TABLE customers (
  customer_id INTEGER,
  name TEXT,
  email TEXT,
  phone TEXT
);

INSERT INTO 
  customers(customer_id, name, email, phone)
VALUES
  (1, '허균', 'hong.hildong@example.com', '010-1234-5678'),
  (2, '김영희', 'kim.younghee@example.com', '010-9876-5432'),
  (3, '이철수', 'lee.cheolsu@example.com', '010-5555-4444');

DELETE FROM 
  product
WHERE
  order_id = 3;

UPDATE 
  customers
SET
  name = '홍길동'
WHERE
  customer_id = 1;

