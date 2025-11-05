-- Active: 1762318696816@@127.0.0.1@3306
SELECT * FROM invoices;

SELECT 
  BillingCountry, SUM(Total) AS TotalSales
FROM 
  invoices
GROUP BY
  BillingCountry;

SELECT 
  InvoiceDate, SUM(Total) AS TotalSales
FROM 
  invoices
GROUP BY
  BillingCountry;


SELECT 
  STRFTIME('%Y', InvoiceDate) AS Year, 
  SUM(Total) AS TotalSales
FROM 
  invoices 
GROUP BY 
  Year;

SELECT
  BillingState, 
  SUM(Total) AS TotalSales
FROM
  invoices
WHERE
  BillingCountry = 'USA' AND
  InvoiceDate > '2010-01-01'
GROUP BY
  BillingState;

SELECT
  BillingCountry, 
  MAX(Total)
FROM
  invoices
WHERE
  BillingCountry = 'Germany' OR 
  BillingCountry = 'France'
GROUP BY
  BillingCountry;