-- CREATE DATABASE siri_ecommerce;
-- CREATE TABLE products (id varchar(20), title varchar(50),price int, description varchar(100), category varchar(100), image varchar(400));

-- INSERT INTO products(id, title, price, description, category, image) values ('1', 'shirt 1', 2000, 'shirt', 'clothing', 'test image');
-- INSERT INTO products(id, title, price, description, category, image) values ('2', 'shirt 1', 2000, 'shirt', 'clothing', 'test image');
--  INSERT INTO products(id, title, price, description, category, image) values ('3', 'shirt 2', 1000, 'shirt', 'clothing', 'test image');
--  INSERT INTO products(id, title, price, description, category, image) values ('4', 'shirt 3', 500, 'shirt', 'clothing', 'test image');
--  INSERT INTO products(id, title, price, description, category, image) values ('5', 'shirt 4', 1000, 'shirt', 'clothing', 'test image');

--  ALTER TABLE products ADD PRIMARY KEY (id)
-- ALTER TABLE products MODIFY image varchar(1000);

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




-- INSERT INTO products(id, title, price, description, category, image) values ('6', 'shirt 4', 1000, 'shirt', '', '');
-- UPDATE products SET category = 'clothing', image = 'testimage' WHERE id='6';

-- UPDATE products SET image = 'https://planetfashion.imgix.net/img/app/product/4/493902-3703049-large.jpg' WHERE category='mensclothing';


-- INSERT INTO products(id, title, price, description, category, image) values ('G1', 'Gold Chain', 100000, 'Gold Chain', 'jewellery','https://5.imimg.com/data5/TestImages/MA/IG/XM/SELLER-45281882/gold-chain-for-women-500x500.jpg');
-- INSERT INTO products(id, title, price, description, category, image) values ('10','Laptop', 25000,'laptop','electronics', 'https://media.wired.com/photos/592708127034dc5f91bed670/master/w_2560%2Cc_limit/rosegold-macbookft1.jpg');
-- INSERT INTO products(id, title, price, description, category, image) values ('9', 'Clothing', 1200, 'women clothing', 'Women jacket','https://www.myntra.com/jackets/campus-sutra/campus-sutra-women-peach-coloured-solid-windcheater-quilted-jacket/12121838/buy');
-- INSERT INTO products(id, title, price, description, category, image) values ('15', 'kurta', 2000, 'kurta', 'mensclothing', 'https://img3.junaroad.com/uiproducts/18179248/pri_175_p-1639831252.jpg');
-- INSERT INTO products(id, title, price, description, category, image) values ('16', 'womens cloth', 1500, 'womens cloth', 'womensclothing', 'https://i.pinimg.com/474x/d0/70/cc/d070cccf3e9a0cd009f7fe0dae05d7df.jpg');
-- INSERT INTO products(id, title, price, description, category, image) values ('20', 'speaker', 15000, 'bluetooth speaker', 'electronics', 'https://www.bhphotovideo.com/images/images2000x2000/sony_srsxb13_b_xb13_portable_bluetooth_speaker_1641787.jpg');
-- INSERT INTO products(id, title, price, description, category, image) values ('21', 'camera', 11000 , 'sony-camera', 'electronics', 'https://www.mbaskool.com/2018_images/top_brands/consumer_electronics/elec05.jpg');
-- INSERT INTO products(id, title, price, description, category, image) values ('22', 'jawelary', 25000 , 'jawelary', 'jawelary', 'https://assets.bwbx.io/images/users/iqjWHBFdfxIU/i8c2FlMYs8fg/v1/1200x-1.jpg');




-- DELETE FROM products WHERE id= '1';

-- SET SQL_SAFE_UPDATES = 0;

-- SELECT COUNT(category), title, category FROM products GROUP BY category;

-- SELECT COUNT(category), title, category FROM products GROUP BY category ORDER BY category ASC;

-- SELECT COUNT(category), title, category FROM products GROUP BY category ORDER BY COUNT(category) DESC;

-- SELECT COUNT(category), title, category FROM products GROUP BY category HAVING COUNT(category) > 5 ORDER BY COUNT(category) DESC;



-- Keys

-- mobile -unique
-- email - unique
-- pan - unique
-- aadhaar - unique
-- city - 
-- pincode
-- dob


-- customerid - primary key

-- candidate key - pan and aadhaar

-- super key - customerid and pan

-- foreign key

-- alternate key - pan, aadhaar

-- composite key - customerid and pan and aaddhar




-- Joins

-- orders              products
-- orderid - p key     productid - primary key
-- date                title
-- cost                cost
-- productid           image


-- 1-abc-p1                  1-p1
-- 2-def-p2                  2-p2
-- 3-lmn-p1                  3-p3
-- 4-xyz-p1
-- 5-xyz123-p3
-- -----------------------------------------------

-- 1-abc-p1                    1-p1
-- 2-def-p2                    1-p1
-- 3-lmn-p1                    1-p1
-- 4-xyz-p1                    1-p1
-- 5-xyz123-p3                 1-p1

-- 1-abc-p1                    2-p2
-- 2-def-p2                    2-p2
-- 3-lmn-p1                     2-p2
-- 4-xyz-p1                    2-p2
-- 5-xyz123-p3                 2-p2

-- 1-abc-p1                     3-p3
-- 2-def-p2                     3-p3
-- 3-lmn-p1                    3-p3
-- 4-xyz-p1                    3-p3
-- 5-xyz123-p3                 3-p3

-- ----------------------------------------------

-- INNER JOIN
-- 1-abc-p1                    1-p1
-- 3-lmn-p1                    1-p1
-- 4-xyz-p1                    1-p1
-- 2-def-p2                    2-p2
-- 5-xyz123-p3                 3-p3


-- join - inner join, outer/full join, left join, right join, self join


-- PRAGMA table_info(products);
-- ALTER TABLE products RENAME TO new_products




-- FOCUS ON JOINS and SubQueries

-- CREATE TABLE users (userid VARCHAR(100) , name VARCHAR(100), email VARCHAR (200), mobile VARCHAR (100), password VARCHAR (100) );

-- ALTER TABLE users ADD PRIMARY KEY (email);
-- ALTER TABLE users ADD UNIQUE KEY (mobile);
-- ALTER TABLE users ADD UNIQUE KEY (userid);

-- INSERT INTO users (userid, name, email, mobile, password) VALUES ('1', 'deepak', 'deepak123@gmail.com', '1231231231', '123456');

-- INSERT INTO users (userid, name, email, mobile, password) VALUES ('2', 'shekhar', 'shekhar07@gmail.com', '1879645783', '1547');

-- INSERT INTO users (userId, name, email, mobile, password) VALUES ('3', 'sidhartha', 'sid@gmail.com', '8909743445', 'Odisha')


