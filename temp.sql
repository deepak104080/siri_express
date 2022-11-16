-- CREATE DATABASE siri_ecommerce;
-- CREATE TABLE products (id varchar(20), title varchar(50),price int, description varchar(100), category varchar(100), image varchar(400));

-- INSERT INTO products(id, title, price, description, category, image) values ('1', 'shirt 1', 2000, 'shirt', 'clothing', 'test image');
-- INSERT INTO products(id, title, price, description, category, image) values ('2', 'shirt 1', 2000, 'shirt', 'clothing', 'test image');
-- INSERT INTO products(id, title, price, description, category, image) values ('3', 'shirt 2', 1000, 'shirt', 'clothing', 'test image');
-- INSERT INTO products(id, title, price, description, category, image) values ('4', 'shirt 3', 500, 'shirt', 'clothing', 'test image');
-- INSERT INTO products(id, title, price, description, category, image) values ('5', 'shirt 4', 1000, 'shirt', 'clothing', 'test image');

-- ALTER TABLE products ADD PRIMARY KEY (id)
-- SELECT * FROM products
-- SELECT * FROM products WHERE id=2
-- SELECT * FROM products WHERE id=2 AND price=2000
-- SELECT * FROM products WHERE id=2 OR price=2000
-- SELECT * FROM products ORDER BY price ASC
-- SELECT * FROM products ORDER BY price DESC
-- SELECT title,price FROM products
-- SELECT * FROM products WHERE price IS NULL
-- SELECT * FROM products WHERE price IS NOT NULL
-- SELECT * FROM products ORDER BY price ASC LIMIT 2
-- SELECT MAX(price) AS maxprice FROM products
-- SELECT MIN(price) AS maxprice FROM products
-- SELECT COUNT(id) FROM products
-- SELECT COUNT(id) FROM products WHERE price=2000
-- SELECT SUM(price) FROM products 
-- SELECT AVG(price) FROM products 
-- SELECT * FROM products WHERE category LIKE '%cloth%'

