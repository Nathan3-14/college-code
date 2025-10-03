CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(50),
    Category VARCHAR(30),
    Price INT,
    Stock INT
);
INSERT INTO Products VALUES
(1, "Laptop", "Computing", 899, 12),
(2, "Mouse", "Accessories", 25, 50),
(3, "Monitor", "Computing", 199, 20),
(4, "Keyboard", "Accessories", 45, 30),
(5, "Smartphone", "Mobile", 699, 15),
(6, "No-Supplier Product", "Testing", 800, 10);

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    Name VARCHAR(50),
    ProductID INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO Suppliers VALUES
(101, "TechSource Ltd", 1),
(102, "GadgetWorld", 2),
(103, "DisplayCo", 3),
(104, "KeyGear", 4),
(105, "MobileMart", 5),
(106, "No-Product Supplier", 7);

SELECT
	Suppliers.Name,
    Products.Name,
    Products.Price
FROM
	Suppliers
    JOIN Products ON Suppliers.ProductID=Products.ProductID
WHERE
	Products.Price > 200;


SELECT
	Suppliers.Name AS SupplierName,
	Products.Name AS ProductName,
	Products.Price AS Price
FROM
	Products
    FULL JOIN Suppliers ON Suppliers.ProductID=Products.ProductID;
