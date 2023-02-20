CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
  person_id FLOAT NOT NULL,
  product_name VARCHAR(30) NOT NULL,
  product_price FLOAT NOT NULL,
  quantity FLOAT NOT NULL  
);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1,'stirFry',13,3),
(2,'steak',26,6),
(1,'shrimp',4,69),
(3,'lobster',69, 2),
(2,'chicken',7,7);

SELECT * FROM orders;

SELECT SUM(product_price) FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price), person_id FROM orders
GROUP BY person_id;