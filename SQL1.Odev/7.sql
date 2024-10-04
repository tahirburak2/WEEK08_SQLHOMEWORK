SELECT
top 5 p.ProductName AS [Ürün],
p.UnitPrice AS [Fiyatlar]
FROM Products p
ORDER BY p.UnitPrice DESC