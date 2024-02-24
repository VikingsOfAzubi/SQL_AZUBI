-- CREATE a database and work inside it. 

CREATE DATABASE AZUBI_VIKING;
USE AZUBI_VIKING;

-- CREATE product TABLE
-- table must have product id, product name, stock_remainig, and date created column
CREATE TABLE Product(
p_Id INT,
p_Name VARCHAR(20) DEFAULT 'Unspecified',-- instead of returning null at a empty value it returns the specified. 
stock_Remaining INT,
date_Created DATE
);

INSERT INTO Product (p_Id,p_Name, stock_remaining,date_created) VALUE (100,'Laptop',18,'2023-03-14');
INSERT INTO Product (p_Id,p_Name, stock_remaining,date_created) VALUE (200,'Apple',12,'2023-12-23');
INSERT INTO Product (p_Id,p_Name, stock_remaining,date_created) VALUE (300,'Speakers',15,'2023-11-25');
INSERT INTO Product (p_Id,p_Name, stock_remaining,date_created) VALUE (400,'Hard Drive', 32, '2024-01-03');
INSERT INTO Product (p_Id,p_Name,stock_remaining,date_created) VALUE (500,'Mouse set',54, '2023-02-06');


-- 2. CREATE Categories table 
-- table must have category_id and category_name column
CREATE TABLE Categories(
category_Id INT PRIMARY KEY AUTO_INCREMENT,
category_Name VARCHAR(20)
);

INSERT INTO Categories (category_Id,category_Name) VALUE (100,'Office Funiture');
INSERT INTO Categories (category_Id,category_Name) VALUE (200,'Electronics');
INSERT INTO Categories (category_Id,category_Name) VALUE (300,'Gaming');
INSERT INTO Categories (category_Id,category_Name) VALUE (400,'Computer Accesories');

-- 3. Create Orders table 
-- Table must have order_id, order_name,order_date and delivery_date. 
CREATE TABLE Orders(
order_Id INT,
order_Name VARCHAR(20),
order_Date DATE,
delivery_Date DATE
);

INSERT INTO Orders (order_Id,order_Name, order_Date, delivery_Date) VALUE (100,'John','2024-01-29','2024-02-01');
INSERT INTO Orders (order_Id,order_Name, order_Date, delivery_Date) VALUE (200,'Jane','2024-02-12','2024-02-14');
INSERT INTO Orders (order_Id,order_Name, order_Date, delivery_Date) VALUE (300,'Peter','2024-01-28','2024-02-01');
INSERT INTO Orders (order_Id,order_Name, order_Date, delivery_Date) VALUE (400,'Susan','2024-01-27','2024-01-29');
INSERT INTO Orders (order_Id,order_Name, order_Date, delivery_Date) VALUE (500,'Peter','2024-01-29','2024-02-07');

-- 4. Modify products table to have a category that references categories using the concept of keys. 
ALTER TABLE Product
ADD COLUMN category_Id INT, 
ADD FOREIGN KEY (category_Id) REFERENCES Categories (category_Id);

-- 5. Modify orders table to have a product ordered also using the concepts of keys. 
ALTER TABLE Orders
ADD COLUMN p_Ordered INT,
ADD FOREIGN KEY (p_Ordered) REFERENCES Product(p_Id);

ALTER TABLE Orders
ADD COLUMN p_Id INT,
ADD FOREIGN KEY (p_Id) REFERENCES Product (p_id);


-- 6. link all of the tables
ALTER TABLE Product
ADD CONSTRAINT fk_categorie
FOREIGN KEY (category_Id) REFERENCES Categories(category_Id); 

ALTER TABLE Orders
ADD CONSTRAINT fk_products
FOREIGN KEY (p_Id) REFERENCES Product(p_Id);

SELECT * FROM Product;
-- 7. 
-- - a; get all products
SELECT * FROM Product;
-- - b, gel all categories 
SELECT * FROM Categories;
-- - c,get all orders
SELECT * FROM Orders;
-- - d, get all orders for one value = product_name
-- 7d. Get all orders for a specific product
SELECT * FROM Orders 
JOIN Product ON Orders.p_Id = Product.p_id
WHERE Product.p_Name = 'Speakers';

SELECT * FROM Product;

-- - e, get all products under a specific category
SELECT * FROM Categories WHERE category_Id = 300;
