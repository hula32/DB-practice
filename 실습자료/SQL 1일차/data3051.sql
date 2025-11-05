-- Active: 1762223728139@@127.0.0.1@3306
SELECT * FROM songs;

SELECT 
  genre
FROM
  songs
GROUP BY
  genre;

SELECT
  genre, COUNT(*)
FROM  
  songs
GROUP BY
  genre;

SELECT
  genre, 
  COUNT(*), 
  AVG(duration) AS average_duration
FROM  
  songs
GROUP BY
  genre;