-- 1. Question 1NF

-- Table for orders and customers
CREATE TABLE customerDetails (
orderID INT PRIMARY KEY,
customerName VARCHAR(50) NOT NULL
);

-- Table for individual products in each order
CREATE TABLE productTable (
productID INT PRIMARY KEY,
orderID INT,
productName VARCHAR(50) NOT NULL,
FOREIGN KEY (orderID) REFERENCES customerDetails(orderID)
);

-- 2. Question 2NF
CREATE TABLE orders(
orderId INT PRIMARY KEY,
customerName VARCHAR(50) NOT NULL
);

CREATE TABLE products(
productId INT PRIMARY KEY,
productName VARCHAR(50) NOT NULL,
Quantity INT NOT NULL,
orderId INT,
FOREIGN KEY (orderId) REFERENCES orders(orderId)
);
