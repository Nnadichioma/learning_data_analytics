-- DOCUMENTING MY LEARNING JOURNEY

-- CREATED A DATABASE CALLED LEARNING DATABASE (DB)

CREATE DATABASE learning_db;

USE learning_db;

-- CREATING users, orders, and products tables 
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id INT NOT NULL,
    username VARCHAR(50),
    email VARCHAR(100),
    CONSTRAINT pk_users PRIMARY KEY (id)
);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
	order_id INT NOT NULL,
    user_id INT,
    CONSTRAINT pk_orders PRIMARY KEY (order_id),
    FOREIGN KEY (user_id) REFERENCES users(id) -- means user_id is the foreign key that links the users table with the id column. It shows relationship.
);

CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) CHECK (price > 0),
    category VARCHAR(50) DEFAULT NULL,
    CONSTRAINT pk_products PRIMARY KEY (product_id)
);