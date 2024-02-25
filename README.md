vikingsMart Database

This is a relational database with three tables.

The tables are 
1. Products
 a.product id (primary_key)
 b.product name
 c.price
 d.stock_remaining
 e.date created
2. Categories
 a.category id (primary_key)
 b.category name
3. Orders
a. order id (primary_key)
b. order name
c. order date
d. delivery date

To create a relationship between the tables;
The primary key of categories (category_id) was a made a foreign key in the products table
The primary key of products (product_id) was made a foreign key in the orders table
