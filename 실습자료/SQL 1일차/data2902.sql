SELECT * FROM users

SELECT
  AVG(age) AS average_age
FROM
  users

SELECT
  country, COUNT(*) AS user_count
FROM 
  users
GROUP BY 
  country;

SELECT *
FROM users
ORDER BY
  balance DESC LIMIT 1;

SELECT
  country, AVG(balance) AS avg_balance
FROM
  users
GROUP BY
  country;

SELECT
  (SELECT MAX(balance) FROM users) - 
  (SELECT MIN(balance) FROM users) AS balance_difference

