-- Active: 1762323146383@@127.0.0.1@3306
SELECT * FROM users;

SELECT * FROM transactions;
CREATE TABLE transactions(
  id INTEGER PRIMARY KEY,
  user_id INTEGER,
  amount TEXT NOT NULL,
  transaction_date DATE NOT NULL,
  Foreign Key (user_id) REFERENCES users(id)
);

PRAGMA table_info("users")

INSERT INTO
  transactions(id, user_id, amount, transaction_date)
VALUES
  (1, 1, 500, '2024-03-15'),
  (2, 2, 700, '2024-03-16'),
  (3, 1, 200, '2024-03-17'),
  (4, 3, 100, '2024-03-18');

SELECT
  u.first_name, u.last_name, t.amount, t.transaction_date
FROM
  users AS u 
JOIN
  transactions AS t
  ON u.id = t.user_id;

SELECT
  u.first_name, u.last_name, t.amount, t.transaction_date
FROM
  users AS u 
JOIN
  transactions AS t
  ON u.id = t.user_id
WHERE t.transaction_date > '2024-03-16';

SELECT
  u.first_name, u.last_name, SUM(t.amount) AS total_amount
FROM
  users AS u 
JOIN
  transactions AS t
  ON u.id = t.user_id
GROUP BY
  u.id;
