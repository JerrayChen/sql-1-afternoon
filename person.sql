-- 1.
CREATE TABLE person(
  id SERIAL PRIMARY KEY,
  name VARCHAR(30),
  age INTEGER,
  height FLOAT,
  city VARCHAR(20),
  favorite_color VARCHAR(15)
);

-- 2.
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Rosa', 16, 160, 'Aspertia City', 'Green'),
('Giovanni', 40, 170, 'Viridian City', 'Black'),
('Misty', 10, 130, 'Cerulean City', 'Blue'),
('Serena', 10, 130, 'Lumiose City', 'Pink'),
('Mallow', 12, 140, 'Hauoli City', 'Green');

-- 3.
SELECT * FROM person ORDER BY height DESC;

-- 4.
SELECT * FROM person ORDER BY height ASC;

-- 5.
SELECT * FROM person ORDER BY age DESC;

-- 6.
SELECT * FROM person WHERE age > 20;

-- 7.
SELECT * FROM person WHERE age = 18;

-- 8.
SELECT * FROM person WHERE age > 30 OR age < 20;

-- 9.
SELECT * FROM person WHERE age != 27;

-- 10.
SELECT * FROM person WHERE favorite_color != 'Red';

-- 11.
SELECT * FROM person WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

-- 12.
SELECT * FROM person WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

-- 13.
SELECT * FROM person WHERE favorite_color IN ('Orange', 'Green', 'Blue');

-- 14.
SELECT * FROM person WHERE favorite_color IN ('Yellow', 'Purple');