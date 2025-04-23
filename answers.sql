#Question 1
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(255),
    Product VARCHAR(255)
);

INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product)
VALUES
    (101, 'John Doe', 'Laptop'),
    (101, 'John Doe', 'Mouse'),
    (102, 'Jane Smith', 'Tablet'),
    (102, 'Jane Smith', 'Keyboard'),
    (102, 'Jane Smith', 'Mouse'),
    (103, 'Emily Clark', 'Phone');

#Question 2
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(255)
);

INSERT INTO Customers (CustomerName)
VALUES
    ('John Doe'),
    ('Jane Smith'),
    ('Emily Clark');

CREATE TABLE OrderDetails_2NF (
    OrderID INT,
    CustomerID INT,
    Product VARCHAR(255),
    Quantity INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO OrderDetails_2NF (OrderID, CustomerID, Product, Quantity)
VALUES
    (101, 1, 'Laptop', 2),
    (101, 1, 'Mouse', 1),
    (102, 2, 'Tablet', 3),
    (102, 2, 'Keyboard', 1),
    (102, 2, 'Mouse', 2),
    (103, 3, 'Phone', 1);
