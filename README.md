vikingsMart Database

This is a relational database with three tables.

The tables are 
  1. 1. Products
		1.  product id (primary_key)
		2. product name
		3. price
		4. stock_remaining
		5. date created
	2. Categories
		1. category id (primary_key)
		2. category name
	3. Orders
		1. order id (primary_key)
		2. order name
		3. order date
		4. delivery date

To create a relationship between the tables;
The primary key of categories (category_id) was a made a foreign key in the products table
The primary key of products (product_id) was made a foreign key in the orders table
