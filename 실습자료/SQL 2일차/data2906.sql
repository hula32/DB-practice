-- Active: 1762320873622@@127.0.0.1@3306
PRAGMA table_info('zoo');

CREATE TABLE zoo(
    id INTEGER PRIMARY KEY,
    name TEXT,
    eat TEXT,
    weight INT,
    height INT,
    age INT
);

INSERT INTO
    zoo(name, eat, weight, height, age)
VALUES
    ('Lion', 'Meat', 200, 120, 5),
    ('Elephant', 'Plants', 5000, 300, 15),
    ('Giraffe', 'Leaves', 1500, 550, 10),
    ('Monkey', 'Fruits', 50, 60, 8);

SELECT * FROM zoo;

