CREATE TABLE person (
	person_id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  age FLOAT NOT NULL,
  height FLOAT NOT NULL,
  city VARCHAR(30) NOT NULL,
  favorite_color VARCHAR(30) NOT NULL
);

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Tobin Waters', 29, 180, 'Salt Lake City', 'Purple'),
('Billy', 23, 140, 'Bob Town', 'Pink'),
('Bobby', 22, 233, 'Bill Town', 'Lavender'),
('Bill', 68, 123, 'Bob Town', 'Blue'),
('Bob', 69, 321, 'Bill Town', 'Red');

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height ASC;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
ORDER BY age ASC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20
OR age > 30;

SELECT * FROM person
WHERE age <> 27;

SELECT * FROM person
WHERE favorite_color <> 'Red'

SELECT * FROM person
WHERE favorite_color <> 'Blue'
AND favorite_color <> 'Red';

SELECT * FROM person
WHERE favorite_color = 'orange'
OR favorite_color = 'green';

SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'Blue');

SELECT * FROM person
WHERE favorite_color IN ('yellow', 'Purple');