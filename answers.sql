-- 1.

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

-- 2.
CREATE TABLE CustomerDetails(
    customerId INT PRIMARY KEY,
    customerName VARCHAR(50) NOT NULL
);

CREATE TABLE Product(
    productId INT PRIMARY KEY,
    productName VARCHAR(50) NOT NULL
);


CREATE TABLE orderDetails(
    orderId INT PRIMARY KEY,
    productId INT,
    Quantity INT NOT NULL,
    customerId INT,
    FOREIGN KEY (customerId) REFERENCES CustomerDetails(customerId),
    FOREIGN KEY (productId) REFERENCES Product(productId)
);
