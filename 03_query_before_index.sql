USE QueryOptimizationDB;
GO

SET STATISTICS TIME ON;  -- Mide el tiempo de ejecución
SET STATISTICS IO ON;    -- Mide las lecturas de disco

SELECT 
    c.FirstName,
    c.LastName,
    COUNT(o.OrderID) AS TotalOrders,
    SUM(o.TotalAmount) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.TotalAmount > 500
GROUP BY c.FirstName, c.LastName
ORDER BY TotalSpent DESC;

SET STATISTICS TIME OFF;
SET STATISTICS IO OFF;
GO
