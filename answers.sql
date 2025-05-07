-- 1. Question 1NF

CREATE TABLE orderDetails (
orderID INT PRIMARY KEY,
customerName VARCHAR(50) NOT NULL
);

CREATE TABLE productDetails (
productID INT PRIMARY KEY,
orderID INT,
productName VARCHAR(50) NOT NULL,
FOREIGN KEY (orderID) REFERENCES orderDetails(orderID)
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
