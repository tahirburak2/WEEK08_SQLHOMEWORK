select top 5 
p.ProductName AS [ürünler],
SUM(od.Quantity) AS [toplam satış ücretleri]
FROM OrderDetails od 
JOIN Products p ON od.ProductID=p.ProductID
GROUP BY p.ProductName
order BY [toplam satış ücretleri] DESC