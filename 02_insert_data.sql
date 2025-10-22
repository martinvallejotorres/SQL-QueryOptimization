USE QueryOptimizationDB;
GO

-- Insertar 10,000 clientes
DECLARE @i INT = 1;
WHILE @i <= 10000
BEGIN
    INSERT INTO Customers (FirstName, LastName, City, Country)
    VALUES (
        CONCAT('Name', @i),
        CONCAT('Last', @i),
        'Buenos Aires',
        'Argentina'
    );
    SET @i += 1;
END;
GO

-- Insertar 100,000 órdenes aleatorias
DECLARE @x INT = 1;
WHILE @x <= 100000
BEGIN
    INSERT INTO Orders (CustomerID, OrderDate, TotalAmount)
    VALUES (
        FLOOR(RAND() * 10000) + 1,
        DATEADD(DAY, -FLOOR(RAND() * 365), GETDATE()),
        ROUND(RAND() * 1000, 2)
    );
    SET @x += 1;
END;
GO
