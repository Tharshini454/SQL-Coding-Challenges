-- Day 31: Sorting & Aggregates --

CREATE DATABASE ECommerceDB;
USE ECommerceDB;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    Quantity INT,
    TotalAmount DECIMAL(10,2),
    SaleDate DATE
);

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DepartmentName VARCHAR(50)
);

INSERT INTO Products (ProductID, ProductName, Price) VALUES
(1, 'Laptop', 85000),
(2, 'Smartphone', 55000),
(3, 'Headphones', 3000),
(4, 'Smartwatch', 12000),
(5, 'Tablet', 35000);

INSERT INTO Sales (SaleID, ProductID, Quantity, TotalAmount, SaleDate) VALUES
(1, 1, 2, 170000, '2025-10-01'),
(2, 2, 5, 275000, '2025-10-03'),
(3, 3, 10, 30000, '2025-10-05');

INSERT INTO Employees (EmpID, EmpName, DepartmentName) VALUES
(1, 'Alice', 'HR'),
(2, 'Bob', 'IT'),
(3, 'Charlie', 'IT'),
(4, 'David', 'Finance'),
(5, 'Eva', 'HR'),
(6, 'Frank', 'IT');
INSERT INTO Employees (EmpID, EmpName, DepartmentName) VALUES
(7, 'Grace', 'IT'),
(8, 'Helen', 'Finance'),
(9, 'Ian', 'IT'),
(10, 'Jack', 'IT'),
(11, 'Katy', 'IT'),
(12, 'Leo', 'Finance');
INSERT INTO Employees (EmpID, EmpName, DepartmentName) VALUES
(13, 'Mary', 'IT'),
(14, 'Noah', 'IT'),
(15, 'Olivia', 'IT'),
(16, 'Paul', 'IT'),
(17, 'Queen', 'IT');



-- ORDER BY & LIMIT --
SELECT ProductName, Price
FROM Products
ORDER BY Price DESC
LIMIT 3;

-- Aggregate Functions --
SELECT COUNT(*) AS Total_Sales FROM Sales;
SELECT SUM(TotalAmount) AS Total_Revenue FROM Sales;
SELECT AVG(TotalAmount) AS Average_Sale FROM Sales;
SELECT MAX(TotalAmount) AS Max_Sale FROM Sales;
SELECT MIN(TotalAmount) AS Min_Sale FROM Sales;

-- GROUP BY & HAVING --
SELECT DepartmentName, COUNT(EmpID) AS TotalEmployees
FROM Employees
GROUP BY DepartmentName
HAVING COUNT(EmpID) > 10;










