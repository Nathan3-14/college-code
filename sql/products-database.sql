CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    ProductCategory VARCHAR(30),
    ProductPrice INT,
    ProductStock INT
);
INSERT INTO Products VALUES
(1, "Laptop", "Computing", 899, 12),
(2, "Mouse", "Accessories", 25, 50),
(3, "Monitor", "Computing", 199, 20),
(4, "Keyboard", "Accessories", 45, 30),
(5, "Smartphone", "Mobile", 699, 15);

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(50),
    ProductID INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO Suppliers VALUES
(101, "TechSource Ltd", 1),
(102, "GadgetWorld", 2),
(103, "DisplayCo", 3),
(104, "KeyGear", 4),
(105, "MobileMart", 5);

SELECT Suppliers.SupplierName, Products.ProductName, Products.ProductPrice FROM
Suppliers JOIN Products ON Suppliers.ProductID=Products.ProductID
WHERE Products.ProductPrice > 200;

SELECT ProductName AS ItemName FROM Products
UNION
SELECT SupplierName FROM Suppliers;
