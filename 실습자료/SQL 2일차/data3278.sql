-- Active: 1762324511569@@127.0.0.1@3306
SELECT * FROM employees;

SELECT * FROM departments;

SELECT 
  departments.name AS department,
  employees.name AS oldest_employee,
  MAX(employees.age) AS max_age,
  AVG(employees.age) AS avg_age
FROM employees
JOIN departments
  ON employees.departmentId = departments.id
GROUP BY
  departments.name;

SELECT
  departments.name AS department,
  employees.name AS highest_paid_employee,
  employees.salary AS max_salary
FROM employees
JOIN departments ON employees.departmentId = departments.id
WHERE (employees.salary, employees.departmentId) IN (
  SELECT MAX(salary), departmentId
  FROM employees
  GROUP BY departmentId
);

SELECT 
  departments.name AS department,
  CASE 
    WHEN age < 30 THEN 'Under 30'  
    WHEN age BETWEEN 30 AND 40 THEN 'BETWEEN 30~40'
    ELSE 'Over 40'
  END AS age_group,
  COUNT(*) AS num_employees
FROM
  employees
JOIN
  departments
  ON employees.departmentId = departments.id
GROUP BY 
  department, age_group
ORDER BY
  department, age_group;

SELECT 
  departments.name AS department,
  AVG(employees.salary) AS avg_salary_excluding_highest
FROM employees
JOIN departments ON employees.departmentId = departments.id
WHERE (employees.salary, employees.departmentId) NOT IN (
  SELECT MAX(salary), departmentId
  FROM employees
  GROUP BY departmentId
)
GROUP BY departments.name;