-- 1.
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER REFERENCES person(id),
  product_name VARCHAR(20),
  product_price FLOAT,
  quantity INTEGER
);

-- 2.
INSERT INTO orders 
(person_id, product_name, product_price, quantity)
VALUES (2, 'bulbasaur', 30.99, 1),
(2, 'nidoqueen', 60, 2),
(4, 'greninja', 57, 1),
(5, 'snivy', 19.99, 3),
(3, 'starmie', 30, 1);

-- 3.
SELECT * FROM orders;

-- 4.
SELECT SUM(quantity) total_number FROM orders;

-- 5.
SELECT SUM(quantity*product_price) total_price 
FROM orders;

-- 6.
SELECT person_id, SUM(quantity*product_price) total_price 
FROM orders
GROUP BY person_id
;