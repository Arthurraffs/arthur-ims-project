CREATE DATABASE IF NOT EXISTS arthurIMS;

CREATE TABLE customer (
customer_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
fname VARCHAR(50) NOT NULL,
surname VARCHAR(50) NOT NULL,
username VARCHAR(50) NOT NULL,
password VARCHAR(50) NOT NULL,
email VARCHAR(50)
);

CREATE TABLE item (
item_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
item_name VARCHAR(75) NOT NULL,
item_cost DOUBLE NOT NULL
);

CREATE TABLE orders (
order_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
fk_customer_id INT NOT NULL,
fk_item_id INT NOT NULL,
order_cost DOUBLE NOT NULL,
order_date DATE NOT NULL,
FOREIGN KEY (fk_customer_id) REFERENCES customer(customer_id),
FOREIGN KEY (fk_item_id) REFERENCES item(item_id)
);

CREATE TABLE order_items (
order_items_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
fk_order_id INT NOT NULL,
dispatch_date DATE NOT NULL,
total_cost DOUBLE NOT NULL,
FOREIGN KEY (fk_order_id) REFERENCES orders(order_id)
);
