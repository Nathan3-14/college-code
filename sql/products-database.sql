CREATE TABLE Products (
    ProductID INT,
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
(5, "Smartphone", "Mobile", 699, 15);

CREATE TABLE Suppliers (
    SupplierID INT,
    SupplierName VARCHAR(50),
    ProductID INT
);
INSERT INTO Suppliers VALUES
(101, "TechSource Ltd", 1), --
(102, "GadgetWorld", 2),
(103, "DisplayCo", 3),
(104, "KeyGear", 4),
(105, "MobileMart", 5); --

--SELECT Category, AVG(Price) AS AveragePrice FROM Products GROUP BY Category;
SELECT SupplierName FROM Suppliers JOIN Products WHERE Price > 200;
