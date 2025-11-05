-- Active: 1762320873622@@127.0.0.1@3306
SELECT * FROM zoo;

ALTER TABLE 
  zoo
ADD COLUMN 
  species text;

UPDATE 
  zoo
SET
  species = 'Panthera Ieo'
WHERE
  name = 'Lion';

UPDATE 
  zoo
SET
  species = 'Loxodonta africana'
WHERE
  name = 'Elephant';

UPDATE 
  zoo
SET
  species = 'Giraffa camelopardalis'
WHERE
  name = 'Giraffe';

UPDATE 
  zoo
SET
  species = 'Cebus capucinus'
WHERE
  name = 'Monkey';

UPDATE
  zoo
SET
  height = height * 2.54;

