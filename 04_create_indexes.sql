USE QueryOptimizationDB;
GO

-- Índice en CustomerID de Orders (para acelerar JOIN)
CREATE NONCLUSTERED INDEX IX_Orders_CustomerID
ON Orders (CustomerID);

-- Índice en TotalAmount (para acelerar el filtro WHERE)
CREATE NONCLUSTERED INDEX IX_Orders_TotalAmount
ON Orders (TotalAmount);
GO
