CREATE DATABASE QueryOptimizationDB;
GO
USE QueryOptimizationDB;
GO

-- Tabla de clientes
CREATE TABLE Customers (
    CustomerID INT IDENTITY PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    City VARCHAR(100),
    Country VARCHAR(50)
);

-- Tabla de órdenes
CREATE TABLE Orders (
    OrderID INT IDENTITY PRIMARY KEY,
    CustomerID INT,
    OrderDate DATETIME,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
GO
