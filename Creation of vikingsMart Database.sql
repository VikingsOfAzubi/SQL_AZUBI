CREATE TABLE Products(
	product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL (10,2) NOT NULL,
    stock_remaining INT NOT NULL,
    date_created TIMESTAMP NOT NULL DEFAULT NOW()    
);

DESCRIBE Products;

CREATE TABLE Categories(
	category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL
);

DESCRIBE Categories;

CREATE TABLE Orders (
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_name VARCHAR(100) NOT NULL,
    order_date DATE NOT NULL,
    delivery_date DATE NOT NULL
);

DESCRIBE Orders;

ALTER TABLE Products
ADD COLUMN category_id INT,
ADD FOREIGN KEY (category_id) REFERENCES Categories(category_id) ON DELETE CASCADE;

ALTER TABLE Orders
ADD COLUMN product_id INT,
ADD FOREIGN KEY (product_id) REFERENCES Products(product_id) ON DELETE CASCADE;


INSERT INTO Categories VALUES (100, 'Electronics');
INSERT INTO Categories VALUES (101, 'Electronics');

UPDATE Categories
SET category_name = 'Groceries'
WHERE category_id = 101

INSERT INTO Categories VALUES (102, 'Office Supplies');
INSERT INTO Categories VALUES (103, 'Fashion');

INSERT INTO Products VALUES (200, 'Headphone', 100.00, 200, NOW(), 100);
INSERT INTO Products VALUES (201, 'Camera', 1000.00, 200, NOW(), 100);
INSERT INTO Products VALUES (202, 'Laptop', 2500.00, 300, NOW(), 100);
INSERT INTO Products VALUES (203, 'Snack', 20.00, 500, NOW(), 101);
INSERT INTO Products VALUES (204, 'Beverage', 10.00, 700, NOW(), 101);
INSERT INTO Products VALUES (205, 'Paper', 70.00, 1000, NOW(), 102);
INSERT INTO Products VALUES (206, 'Calculator', 150.00, 600, NOW(), 102);
INSERT INTO Products VALUES (207, 'Shoe', 40.00, 70, NOW(), 103);
INSERT INTO Products VALUES (208, 'Dress', 300.00, 80, NOW(), 103);

INSERT INTO Orders VALUES (300, '1-Headphone', '2024-01-01', '2024-01-03',200);
INSERT INTO Orders VALUES (301, '1-Camera', '2024-01-02', '2024-01-04',201);
INSERT INTO Orders VALUES (302, '1-Beverage', '2024-01-03', '2024-01-05',204);

SELECT * FROM Products;
SELECT * FROM Categories;
SELECT * FROM Orders;

SELECT * FROM Orders
WHERE product_id = 200;

SELECT * FROM Products
WHERE category_id = 100;