SELECT
p.ProductName AS [Ürün adı],
o.Freight AS [Nakliye Ücreti]
FROM Orders o 
JOIN OrderDetails od ON o.OrderID=od.OrderID
JOIN Products p on od.ProductID=p.ProductID
WHERE o.Freight>50