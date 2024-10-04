--Distinct komutu benzersiz olanları saymaya yardımcı oldu
SELECT 
p.ProductName AS [Ürün],
COUNT(DISTINCT o.CustomerID) AS [Benzersiz Müşteri]
FROM OrderDetails od 
    JOIN Orders o ON od.OrderID=o.OrderID
        JOIN Products p ON p.ProductID=od.ProductID
group BY p.ProductName
